.class Lcom/tudou/alipay/AlipayManager$3;
.super Landroid/content/BroadcastReceiver;
.source "AlipayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/alipay/AlipayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/AlipayManager;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/AlipayManager;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/tudou/alipay/AlipayManager$3;->this$0:Lcom/tudou/alipay/AlipayManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 303
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "package:com.alipay.android.app"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager$3;->this$0:Lcom/tudou/alipay/AlipayManager;

    invoke-static {v1}, Lcom/tudou/alipay/AlipayManager;->access$600(Lcom/tudou/alipay/AlipayManager;)V

    goto :goto_0
.end method
