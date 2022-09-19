.class Lcom/tudou/ui/fragment/UploadFragment$6;
.super Ljava/lang/Object;
.source "UploadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadFragment;->getVideoMd5()V
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
    .line 518
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 522
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/upload/UploadUtil;->isStopCalMd5:Z

    .line 523
    return-void
.end method
