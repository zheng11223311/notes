.class Lcom/tudou/android/Youku$2;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Llfsdk/LFSdkManager$LFSdkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/Youku;->initLaiFengSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/Youku;


# direct methods
.method constructor <init>(Lcom/tudou/android/Youku;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/tudou/android/Youku$2;->this$0:Lcom/tudou/android/Youku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roomid"    # Ljava/lang/String;
    .param p3, "cps"    # Ljava/lang/String;

    .prologue
    .line 537
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getYktk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tudou/laifeng/lfJsObj;->getLaiFengYktk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1, p3}, Llfsdk/LFSdkManager;->enterLaifengRoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 549
    :goto_0
    return-void

    .line 541
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 542
    .local v0, "goLoginIntent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 543
    const-string v1, "TAG"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    const-string/jumbo v1, "room_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string v1, "cps"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const v1, 0x7f040005

    const v2, 0x7f040004

    invoke-static {p1, v0, v1, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_0
.end method

.method public Share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "coverUrl"    # Ljava/lang/String;
    .param p5, "jumpUrl"    # Ljava/lang/String;

    .prologue
    .line 554
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const/4 v5, 0x2

    move-object v1, p2

    move-object v2, p5

    move-object v3, p4

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/tudou/android/TudouApi;->shareOther(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 556
    return-void
.end method
