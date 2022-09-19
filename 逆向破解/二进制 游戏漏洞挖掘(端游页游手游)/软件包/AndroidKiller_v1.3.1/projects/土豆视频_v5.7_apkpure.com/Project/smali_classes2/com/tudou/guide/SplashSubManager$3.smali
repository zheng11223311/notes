.class Lcom/tudou/guide/SplashSubManager$3;
.super Ljava/lang/Object;
.source "SplashSubManager.java"

# interfaces
.implements Lcom/tudou/guide/SplashSubManager$OnGoInAppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/guide/SplashSubManager;->setOnGoInAppListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/guide/SplashSubManager;

.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/tudou/guide/SplashSubManager;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/tudou/guide/SplashSubManager$3;->this$0:Lcom/tudou/guide/SplashSubManager;

    iput-object p2, p0, Lcom/tudou/guide/SplashSubManager$3;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGoIn()V
    .locals 6

    .prologue
    .line 197
    iget-object v2, p0, Lcom/tudou/guide/SplashSubManager$3;->val$a:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v2

    invoke-interface {v2}, Lcom/tudou/service/attention/IAttention;->getLoaclAttentionCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/tudou/guide/SplashSubManager$3;->this$0:Lcom/tudou/guide/SplashSubManager;

    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getAttentionList()Lcom/youku/vo/Podcast;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tudou/guide/SplashSubManager;->changePodToTab(Lcom/youku/vo/Podcast;)V

    .line 204
    new-instance v0, Lcom/youku/widget/SplashSubedDialog;

    iget-object v2, p0, Lcom/tudou/guide/SplashSubManager$3;->val$a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tudou/guide/SplashSubManager$3;->this$0:Lcom/tudou/guide/SplashSubManager;

    invoke-static {v3}, Lcom/tudou/guide/SplashSubManager;->access$100(Lcom/tudou/guide/SplashSubManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/youku/widget/SplashSubedDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 205
    .local v0, "dialog":Lcom/youku/widget/SplashSubedDialog;
    invoke-virtual {v0}, Lcom/youku/widget/SplashSubedDialog;->show()V

    .line 206
    invoke-virtual {v0}, Lcom/youku/widget/SplashSubedDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 207
    .local v1, "win":Landroid/view/Window;
    const v2, 0x7f0e00e4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v0    # "dialog":Lcom/youku/widget/SplashSubedDialog;
    .end local v1    # "win":Landroid/view/Window;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
