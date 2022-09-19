.class Lcom/youku/player/ui/widget/TudouEncryptDialog$2;
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
    .line 65
    iput-object p1, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog$2;->this$0:Lcom/youku/player/ui/widget/TudouEncryptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog$2;->this$0:Lcom/youku/player/ui/widget/TudouEncryptDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->dismiss()V

    .line 70
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog$2;->this$0:Lcom/youku/player/ui/widget/TudouEncryptDialog;

    invoke-static {v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->access$100(Lcom/youku/player/ui/widget/TudouEncryptDialog;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method
