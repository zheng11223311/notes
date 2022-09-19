.class Lcom/tudou/ui/fragment/UploadFailedFragment$1;
.super Ljava/lang/Object;
.source "UploadFailedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadFailedFragment;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadFailedFragment;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 127
    return-void
.end method
