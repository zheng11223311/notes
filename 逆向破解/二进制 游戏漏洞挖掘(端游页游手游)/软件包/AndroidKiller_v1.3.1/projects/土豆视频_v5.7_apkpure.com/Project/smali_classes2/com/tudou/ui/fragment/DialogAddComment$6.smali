.class Lcom/tudou/ui/fragment/DialogAddComment$6;
.super Ljava/lang/Object;
.source "DialogAddComment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DialogAddComment;->initView(Landroid/view/View;)V
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
    .line 225
    iput-object p1, p0, Lcom/tudou/ui/fragment/DialogAddComment$6;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$6;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->dismiss()V

    .line 229
    return-void
.end method
