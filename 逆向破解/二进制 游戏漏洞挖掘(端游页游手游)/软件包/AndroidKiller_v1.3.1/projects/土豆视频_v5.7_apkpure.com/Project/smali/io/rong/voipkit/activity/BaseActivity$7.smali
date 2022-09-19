.class Lio/rong/voipkit/activity/BaseActivity$7;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/BaseActivity;->enableHandOffAndSoundOff(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/BaseActivity;

.field final synthetic val$hands_off:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/BaseActivity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lio/rong/voipkit/activity/BaseActivity$7;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    iput-object p2, p0, Lio/rong/voipkit/activity/BaseActivity$7;->val$hands_off:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 537
    const-string v0, "aff"

    const-string v1, "=================hands_off================"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity$7;->val$hands_off:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 539
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity$7;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    iget-object v0, v0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ultrapower/mcs/engine/UMCS;->SetLoudSpeakerEnable(Z)I

    .line 540
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity$7;->val$hands_off:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity$7;->val$hands_off:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 542
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity$7;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    iget-object v0, v0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ultrapower/mcs/engine/UMCS;->SetLoudSpeakerEnable(Z)I

    .line 543
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity$7;->val$hands_off:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method
