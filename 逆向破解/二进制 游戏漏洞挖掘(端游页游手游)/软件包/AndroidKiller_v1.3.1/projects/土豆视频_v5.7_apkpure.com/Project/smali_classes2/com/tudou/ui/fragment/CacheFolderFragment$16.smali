.class Lcom/tudou/ui/fragment/CacheFolderFragment$16;
.super Ljava/lang/Object;
.source "CacheFolderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$16;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$16;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->showMoreCacheOrNot(I)V

    .line 693
    return-void
.end method
