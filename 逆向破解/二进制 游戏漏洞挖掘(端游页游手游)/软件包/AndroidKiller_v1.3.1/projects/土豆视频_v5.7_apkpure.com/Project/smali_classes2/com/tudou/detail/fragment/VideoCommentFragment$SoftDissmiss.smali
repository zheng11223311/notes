.class Lcom/tudou/detail/fragment/VideoCommentFragment$SoftDissmiss;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftDissmiss"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$SoftDissmiss;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$SoftDissmiss;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1802(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1015
    return-void
.end method
