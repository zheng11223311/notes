.class public Lcom/tudou/alipay/entity/DoPayData;
.super Ljava/lang/Object;
.source "DoPayData.java"


# static fields
.field public static final PAY_CHANNEL_ALIPAY:Ljava/lang/String; = "100"

.field public static final PAY_CHANNEL_WEIXIN:Ljava/lang/String; = "103"


# instance fields
.field private channel_params:Ljava/lang/String;

.field private pay_channel:Ljava/lang/String;

.field private trade_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/tudou/alipay/entity/DoPayData;->channel_params:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/tudou/alipay/entity/DoPayData;->trade_id:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/tudou/alipay/entity/DoPayData;->pay_channel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannel_params()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tudou/alipay/entity/DoPayData;->channel_params:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_channel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tudou/alipay/entity/DoPayData;->pay_channel:Ljava/lang/String;

    return-object v0
.end method

.method public getTrade_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tudou/alipay/entity/DoPayData;->trade_id:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel_params(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel_params"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/tudou/alipay/entity/DoPayData;->channel_params:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setPay_channel(Ljava/lang/String;)V
    .locals 0
    .param p1, "pay_channel"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tudou/alipay/entity/DoPayData;->pay_channel:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTrade_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "trade_id"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tudou/alipay/entity/DoPayData;->trade_id:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DoPayData [channel_params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/alipay/entity/DoPayData;->channel_params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trade_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/alipay/entity/DoPayData;->trade_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pay_channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/alipay/entity/DoPayData;->pay_channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
