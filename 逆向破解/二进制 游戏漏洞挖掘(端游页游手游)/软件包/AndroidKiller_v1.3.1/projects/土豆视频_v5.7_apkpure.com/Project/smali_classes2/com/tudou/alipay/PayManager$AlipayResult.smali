.class Lcom/tudou/alipay/PayManager$AlipayResult;
.super Ljava/lang/Object;
.source "PayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/alipay/PayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlipayResult"
.end annotation


# instance fields
.field private result:Ljava/lang/String;

.field private resultStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/tudou/alipay/PayManager;


# direct methods
.method public constructor <init>(Lcom/tudou/alipay/PayManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "resultStatus"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/tudou/alipay/PayManager$AlipayResult;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/alipay/PayManager$AlipayResult;->resultStatus:Ljava/lang/String;

    .line 724
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/alipay/PayManager$AlipayResult;->result:Ljava/lang/String;

    .line 719
    iput-object p2, p0, Lcom/tudou/alipay/PayManager$AlipayResult;->resultStatus:Ljava/lang/String;

    .line 720
    iput-object p3, p0, Lcom/tudou/alipay/PayManager$AlipayResult;->result:Ljava/lang/String;

    .line 721
    return-void
.end method

.method static synthetic access$700(Lcom/tudou/alipay/PayManager$AlipayResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager$AlipayResult;

    .prologue
    .line 716
    iget-object v0, p0, Lcom/tudou/alipay/PayManager$AlipayResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/alipay/PayManager$AlipayResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager$AlipayResult;

    .prologue
    .line 716
    iget-object v0, p0, Lcom/tudou/alipay/PayManager$AlipayResult;->resultStatus:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlipayResult [resultStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/alipay/PayManager$AlipayResult;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/alipay/PayManager$AlipayResult;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
