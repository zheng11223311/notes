.class Lcom/tudou/detail/widget/VideoCommentBar$SoftDissmiss;
.super Ljava/lang/Object;
.source "VideoCommentBar.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/VideoCommentBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftDissmiss"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoCommentBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoCommentBar;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCommentBar$SoftDissmiss;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar$SoftDissmiss;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/detail/widget/VideoCommentBar;->access$602(Lcom/tudou/detail/widget/VideoCommentBar;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    return-void
.end method
