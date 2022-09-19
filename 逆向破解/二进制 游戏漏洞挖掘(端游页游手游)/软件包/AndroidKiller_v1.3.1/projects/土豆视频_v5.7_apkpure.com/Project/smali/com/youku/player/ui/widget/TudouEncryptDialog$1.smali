.class Lcom/youku/player/ui/widget/TudouEncryptDialog$1;
.super Ljava/lang/Object;
.source "TudouEncryptDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ui/widget/TudouEncryptDialog;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ui/widget/TudouEncryptDialog;


# direct methods
.method constructor <init>(Lcom/youku/player/ui/widget/TudouEncryptDialog;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog$1;->this$0:Lcom/youku/player/ui/widget/TudouEncryptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog$1;->this$0:Lcom/youku/player/ui/widget/TudouEncryptDialog;

    invoke-static {v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->access$000(Lcom/youku/player/ui/widget/TudouEncryptDialog;)Lcom/youku/player/ui/widget/TudouEncryptDialog$OnPositiveClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog$1;->this$0:Lcom/youku/player/ui/widget/TudouEncryptDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->dismiss()V

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog$1;->this$0:Lcom/youku/player/ui/widget/TudouEncryptDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u52a0\u5bc6\u89c6\u9891\u5bc6\u7801\u8f93\u5165\u6846\u786e\u8ba4\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v2, "\u89c6\u9891\u64ad\u653e\u9875"

    const/4 v3, 0x0

    invoke-static {}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youku/player/util/AnalyticsWrapper;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog$1;->this$0:Lcom/youku/player/ui/widget/TudouEncryptDialog;

    invoke-static {v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->access$000(Lcom/youku/player/ui/widget/TudouEncryptDialog;)Lcom/youku/player/ui/widget/TudouEncryptDialog$OnPositiveClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog$1;->this$0:Lcom/youku/player/ui/widget/TudouEncryptDialog;

    invoke-static {v1}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->access$100(Lcom/youku/player/ui/widget/TudouEncryptDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/youku/player/ui/widget/TudouEncryptDialog$OnPositiveClickListener;->onClick(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog$1;->this$0:Lcom/youku/player/ui/widget/TudouEncryptDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->dismiss()V

    .line 61
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog$1;->this$0:Lcom/youku/player/ui/widget/TudouEncryptDialog;

    invoke-static {v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->access$100(Lcom/youku/player/ui/widget/TudouEncryptDialog;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
