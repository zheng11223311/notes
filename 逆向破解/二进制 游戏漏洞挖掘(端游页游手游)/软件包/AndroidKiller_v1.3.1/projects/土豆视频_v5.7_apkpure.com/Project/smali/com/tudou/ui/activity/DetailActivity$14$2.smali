.class Lcom/tudou/ui/activity/DetailActivity$14$2;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity$14;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/activity/DetailActivity$14;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity$14;)V
    .locals 0

    .prologue
    .line 2155
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$14$2;->this$1:Lcom/tudou/ui/activity/DetailActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2159
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2160
    const-string/jumbo v0, "\u5f53\u524d\u4e3aWiFi\uff0c\u8bf7\u653e\u5fc3\u89c2\u770b"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 2162
    :cond_0
    return-void
.end method
