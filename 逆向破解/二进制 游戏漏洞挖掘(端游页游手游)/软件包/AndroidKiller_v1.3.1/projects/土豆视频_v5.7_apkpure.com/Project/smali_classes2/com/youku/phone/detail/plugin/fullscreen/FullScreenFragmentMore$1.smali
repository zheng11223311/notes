.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$1;
.super Ljava/lang/Object;
.source "FullScreenFragmentMore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;
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
    .line 73
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->updateLoopView()V

    .line 91
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "play_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    invoke-static {v2}, Lcom/youku/player/goplay/Profile;->setPlayMode(I)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "play_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    invoke-static {v3}, Lcom/youku/player/goplay/Profile;->setPlayMode(I)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "play_mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    invoke-static {v4}, Lcom/youku/player/goplay/Profile;->setPlayMode(I)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c03ec
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
