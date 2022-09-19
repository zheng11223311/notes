.class Lcom/youku/widget/VipBuyDialog$4;
.super Ljava/lang/Object;
.source "VipBuyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/VipBuyDialog;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/VipBuyDialog;


# direct methods
.method constructor <init>(Lcom/youku/widget/VipBuyDialog;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/youku/widget/VipBuyDialog$4;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$4;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-virtual {v0}, Lcom/youku/widget/VipBuyDialog;->dismiss()V

    .line 130
    invoke-static {}, Lcom/tudou/alipay/PayManager;->getInstance()Lcom/tudou/alipay/PayManager;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$4;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-static {v0}, Lcom/youku/widget/VipBuyDialog;->access$000(Lcom/youku/widget/VipBuyDialog;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$4;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-static {v0}, Lcom/youku/widget/VipBuyDialog;->access$200(Lcom/youku/widget/VipBuyDialog;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$4;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-static {v0}, Lcom/youku/widget/VipBuyDialog;->access$300(Lcom/youku/widget/VipBuyDialog;)Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    move-result-object v0

    iget-object v4, v0, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;->sale_price:Ljava/lang/String;

    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$4;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-static {v0}, Lcom/youku/widget/VipBuyDialog;->access$300(Lcom/youku/widget/VipBuyDialog;)Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    move-result-object v0

    iget v5, v0, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;->periods:I

    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$4;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-static {v0}, Lcom/youku/widget/VipBuyDialog;->access$300(Lcom/youku/widget/VipBuyDialog;)Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    move-result-object v0

    iget-wide v6, v0, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;->timespan:J

    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$4;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-static {v0}, Lcom/youku/widget/VipBuyDialog;->access$400(Lcom/youku/widget/VipBuyDialog;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u8d2d\u4e70\u571f\u8c46\u4f1a\u5458"

    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$4;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-static {v0}, Lcom/youku/widget/VipBuyDialog;->access$300(Lcom/youku/widget/VipBuyDialog;)Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    move-result-object v0

    iget-object v10, v0, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;->discount:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Lcom/tudou/alipay/PayManager;->doPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
