.class Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;
.super Ljava/lang/Object;
.source "EndActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->setRecVideos(Lcom/youku/vo/DetailRecomment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

.field final synthetic val$pos:I

.field final synthetic val$recomment:Lcom/youku/vo/DetailRecomment;

.field final synthetic val$video:Lcom/youku/vo/RelatedVideo;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Lcom/youku/vo/RelatedVideo;Lcom/youku/vo/DetailRecomment;I)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;->val$video:Lcom/youku/vo/RelatedVideo;

    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;->val$recomment:Lcom/youku/vo/DetailRecomment;

    iput p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndActivity onItemClick videoid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;->val$video:Lcom/youku/vo/RelatedVideo;

    iget-object v2, v2, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;->val$recomment:Lcom/youku/vo/DetailRecomment;

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;->val$pos:I

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;->val$video:Lcom/youku/vo/RelatedVideo;

    iget-object v2, v2, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/detail/Test;->onRecommentClick(Lcom/youku/vo/DetailRecomment;ILjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;->val$video:Lcom/youku/vo/RelatedVideo;

    iget-object v1, v1, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$1400(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Ljava/lang/String;)V

    .line 223
    return-void
.end method
