.class public Lcom/tudou/alipay/entity/TradeInfo;
.super Ljava/lang/Object;
.source "TradeInfo.java"


# static fields
.field public static final STATE_TRADE_FAIL:Ljava/lang/String; = "5"

.field public static final STATE_TRADE_HANDLING1:Ljava/lang/String; = "1"

.field public static final STATE_TRADE_HANDLING2:Ljava/lang/String; = "2"

.field public static final STATE_TRADE_HANDLING3:Ljava/lang/String; = "3"

.field public static final STATE_TRADE_SUCCESS:Ljava/lang/String; = "4"


# instance fields
.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/alipay/entity/TradeInfo;->state:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tudou/alipay/entity/TradeInfo;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tudou/alipay/entity/TradeInfo;->state:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TradeInfo [state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/alipay/entity/TradeInfo;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
