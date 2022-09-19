.class Lio/rong/imkit/widget/AsyncImageView$1;
.super Ljava/lang/Object;
.source "AsyncImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/AsyncImageView;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/AsyncImageView;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/AsyncImageView;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lio/rong/imkit/widget/AsyncImageView$1;->this$0:Lio/rong/imkit/widget/AsyncImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$1;->this$0:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v0}, Lio/rong/imkit/widget/AsyncImageView;->refreshResource()V

    .line 68
    return-void
.end method
