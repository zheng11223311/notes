.class public Lcom/youku/vo/ListVipPayInfo$Result;
.super Ljava/lang/Object;
.source "ListVipPayInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/ListVipPayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;
    }
.end annotation


# instance fields
.field public platform:Ljava/lang/String;

.field public price_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/vo/ListVipPayInfo;

.field public vip_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/ListVipPayInfo;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/youku/vo/ListVipPayInfo$Result;->this$0:Lcom/youku/vo/ListVipPayInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method
