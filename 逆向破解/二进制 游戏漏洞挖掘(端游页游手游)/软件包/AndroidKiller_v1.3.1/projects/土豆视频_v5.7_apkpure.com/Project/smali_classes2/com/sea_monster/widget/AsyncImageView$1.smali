.class Lcom/sea_monster/widget/AsyncImageView$1;
.super Ljava/lang/Object;
.source "AsyncImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sea_monster/widget/AsyncImageView;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sea_monster/widget/AsyncImageView;


# direct methods
.method constructor <init>(Lcom/sea_monster/widget/AsyncImageView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sea_monster/widget/AsyncImageView$1;->this$0:Lcom/sea_monster/widget/AsyncImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView$1;->this$0:Lcom/sea_monster/widget/AsyncImageView;

    invoke-virtual {v0}, Lcom/sea_monster/widget/AsyncImageView;->refreshResouce()V

    .line 64
    return-void
.end method
