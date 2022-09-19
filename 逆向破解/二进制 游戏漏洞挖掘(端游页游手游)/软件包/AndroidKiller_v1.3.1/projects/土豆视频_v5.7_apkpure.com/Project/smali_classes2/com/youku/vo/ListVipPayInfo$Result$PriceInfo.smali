.class public Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;
.super Ljava/lang/Object;
.source "ListVipPayInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/ListVipPayInfo$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PriceInfo"
.end annotation


# instance fields
.field public discount:Ljava/lang/String;

.field public periods:I

.field public price:I

.field public sale_price:Ljava/lang/String;

.field final synthetic this$1:Lcom/youku/vo/ListVipPayInfo$Result;

.field public timespan:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/ListVipPayInfo$Result;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;->this$1:Lcom/youku/vo/ListVipPayInfo$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
