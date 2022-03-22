import 'package:flutter/material.dart';
import 'package:shopdemo/resources/models/product_model.dart';
import 'package:shopdemo/resources/utils/app_styles.dart';
import 'package:shopdemo/resources/utils/commons.dart';

class itemProductWidget extends StatefulWidget {
  final Product? product;

  const itemProductWidget({this.product});

  @override
  State<itemProductWidget> createState() => _itemProductWidgetState();
}

class _itemProductWidgetState extends State<itemProductWidget> {
  String getSaleOff(double? priceold, double? price) {
    double kq = 0;
    double chech = priceold! - price!;
    kq = chech / priceold * 100;
    return kq.floor().toString();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("detail page");
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 130,
                child: Image.asset(
                  widget.product!.image.toString(),
                  fit: BoxFit.fitHeight,
                )),
            SizedBox(height: 10),
            Text(widget.product!.title.toString(),
                style: AppStyles.nameProduct,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left),
            SizedBox(height: 7),
            showStar(star: widget.product!.rating!.rate),
            SizedBox(height: 15),
            Text("\$${widget.product!.price}", style: AppStyles.priceProduct),
            if (widget.product!.priceold! > 0) SizedBox(height: 7),
            if (widget.product!.priceold! > 0)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "\$${widget.product!.priceold}",
                    style: AppStyles.priceoldProduct,
                  ),
                  Container(
                    child: Text(
                      "${getSaleOff(widget.product!.priceold, widget.product!.price)}% Off",
                      style: AppStyles.saleoffProduct,
                    ),
                    margin: EdgeInsets.only(left: 10),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
