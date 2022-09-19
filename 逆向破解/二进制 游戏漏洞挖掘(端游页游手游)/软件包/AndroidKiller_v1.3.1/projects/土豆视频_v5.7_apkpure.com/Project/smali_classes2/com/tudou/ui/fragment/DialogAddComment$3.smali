.class Lcom/tudou/ui/fragment/DialogAddComment$3;
.super Ljava/lang/Object;
.source "DialogAddComment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DialogAddComment;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DialogAddComment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DialogAddComment;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/tudou/ui/fragment/DialogAddComment$3;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$3;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->dismiss()V

    .line 187
    return-void
.end method
