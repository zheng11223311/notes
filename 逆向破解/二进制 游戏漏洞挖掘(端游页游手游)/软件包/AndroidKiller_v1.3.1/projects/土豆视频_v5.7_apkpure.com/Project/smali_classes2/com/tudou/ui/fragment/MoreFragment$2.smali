.class Lcom/tudou/ui/fragment/MoreFragment$2;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$2;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/MoreFragment$2;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$2;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 518
    return-void
.end method
