.class Lcom/tudou/ui/fragment/CacheFolderFragment$12;
.super Ljava/lang/Object;
.source "CacheFolderFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment;->deleteSelected()V
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
    .line 490
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "arg"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$1100(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    .line 493
    return-void
.end method
