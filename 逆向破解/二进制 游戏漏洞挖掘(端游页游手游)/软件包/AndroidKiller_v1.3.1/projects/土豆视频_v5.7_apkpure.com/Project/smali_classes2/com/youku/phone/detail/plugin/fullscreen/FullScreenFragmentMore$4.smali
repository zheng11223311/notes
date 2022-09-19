.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$4;
.super Ljava/lang/Object;
.source "FullScreenFragmentMore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 233
    invoke-static {}, Lcom/youku/player/goplay/Profile;->isSkipHeadAndTail()Z

    move-result v0

    .line 234
    .local v0, "tSkipHead":Z
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v4

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 235
    if-nez v0, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/youku/player/goplay/Profile;->setSkipHeadAndTail(Z)V

    .line 236
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "skip_head"

    if-eqz v0, :cond_2

    :goto_2
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    return-void

    :cond_0
    move v1, v3

    .line 234
    goto :goto_0

    :cond_1
    move v1, v3

    .line 235
    goto :goto_1

    :cond_2
    move v3, v2

    .line 236
    goto :goto_2
.end method
