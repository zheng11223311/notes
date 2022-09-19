.class Lcom/tudou/ui/fragment/UploadFragment$1;
.super Ljava/lang/Object;
.source "UploadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadFragment;->getCategoryList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadFragment;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFragment;->access$000(Lcom/tudou/ui/fragment/UploadFragment;)V

    .line 146
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFragment;->access$100(Lcom/tudou/ui/fragment/UploadFragment;)V

    .line 150
    return-void
.end method
