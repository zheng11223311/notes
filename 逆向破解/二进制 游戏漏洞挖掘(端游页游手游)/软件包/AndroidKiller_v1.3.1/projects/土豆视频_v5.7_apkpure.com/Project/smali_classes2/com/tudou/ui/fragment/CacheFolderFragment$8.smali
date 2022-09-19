.class Lcom/tudou/ui/fragment/CacheFolderFragment$8;
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
    .line 424
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$8;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 428
    const-string v0, "onclick"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$8;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->setEditAble()V

    .line 430
    :cond_0
    return-void
.end method
