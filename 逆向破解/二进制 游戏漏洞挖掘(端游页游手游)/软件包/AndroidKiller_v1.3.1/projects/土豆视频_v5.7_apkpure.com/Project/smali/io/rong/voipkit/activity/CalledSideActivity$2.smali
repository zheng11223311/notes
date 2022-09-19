.class Lio/rong/voipkit/activity/CalledSideActivity$2;
.super Ljava/lang/Object;
.source "CalledSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/CalledSideActivity;->onEvent(Lio/rong/imlib/model/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/CalledSideActivity;

.field final synthetic val$userInfoArg:Lio/rong/imlib/model/UserInfo;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/CalledSideActivity;Lio/rong/imlib/model/UserInfo;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lio/rong/voipkit/activity/CalledSideActivity$2;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iput-object p2, p0, Lio/rong/voipkit/activity/CalledSideActivity$2;->val$userInfoArg:Lio/rong/imlib/model/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$2;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-static {v0}, Lio/rong/voipkit/activity/CalledSideActivity;->access$200(Lio/rong/voipkit/activity/CalledSideActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$2;->val$userInfoArg:Lio/rong/imlib/model/UserInfo;

    invoke-virtual {v1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$2;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v0, v0, Lio/rong/voipkit/activity/CalledSideActivity;->user_photo:Lio/rong/imkit/widget/AsyncImageView;

    new-instance v1, Lcom/sea_monster/resource/Resource;

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$2;->val$userInfoArg:Lio/rong/imlib/model/UserInfo;

    invoke-virtual {v2}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 125
    return-void
.end method
