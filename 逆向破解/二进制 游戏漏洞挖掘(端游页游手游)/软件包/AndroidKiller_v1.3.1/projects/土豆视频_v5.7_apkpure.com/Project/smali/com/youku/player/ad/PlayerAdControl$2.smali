.class Lcom/youku/player/ad/PlayerAdControl$2;
.super Ljava/lang/Object;
.source "PlayerAdControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/PlayerAdControl;->creatDialogToLogin(Lcom/youku/player/module/PlayVideoInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/PlayerAdControl;

.field final synthetic val$dialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

.field final synthetic val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/PlayerAdControl;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/ui/widget/YpYoukuDialog;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/youku/player/ad/PlayerAdControl$2;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    iput-object p2, p0, Lcom/youku/player/ad/PlayerAdControl$2;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    iput-object p3, p0, Lcom/youku/player/ad/PlayerAdControl$2;->val$dialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl$2;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    iget-object v2, p0, Lcom/youku/player/ad/PlayerAdControl$2;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    invoke-static {v1, v2}, Lcom/youku/player/ad/PlayerAdControl;->access$202(Lcom/youku/player/ad/PlayerAdControl;Lcom/youku/player/module/PlayVideoInfo;)Lcom/youku/player/module/PlayVideoInfo;

    .line 375
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl$2;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-static {v1}, Lcom/youku/player/ad/PlayerAdControl;->access$300(Lcom/youku/player/ad/PlayerAdControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.youku.ui.activity.LoginRegistCardViewDialogActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v1, "from"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string/jumbo v1, "track_login_source"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl$2;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-static {v1}, Lcom/youku/player/ad/PlayerAdControl;->access$300(Lcom/youku/player/ad/PlayerAdControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl$2;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-static {v1, v3}, Lcom/youku/player/ad/PlayerAdControl;->access$102(Lcom/youku/player/ad/PlayerAdControl;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 384
    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl$2;->val$dialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 386
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v1

    .line 383
    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl$2;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-static {v1, v3}, Lcom/youku/player/ad/PlayerAdControl;->access$102(Lcom/youku/player/ad/PlayerAdControl;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 384
    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl$2;->val$dialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/youku/player/ad/PlayerAdControl$2;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-static {v2, v3}, Lcom/youku/player/ad/PlayerAdControl;->access$102(Lcom/youku/player/ad/PlayerAdControl;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 384
    iget-object v2, p0, Lcom/youku/player/ad/PlayerAdControl$2;->val$dialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v2}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    throw v1
.end method
