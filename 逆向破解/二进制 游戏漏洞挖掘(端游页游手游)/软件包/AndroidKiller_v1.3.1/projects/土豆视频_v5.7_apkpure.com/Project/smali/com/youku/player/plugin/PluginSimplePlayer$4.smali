.class Lcom/youku/player/plugin/PluginSimplePlayer$4;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->initPlayLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginSimplePlayer;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$400(Lcom/youku/player/plugin/PluginSimplePlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_pause_big_detail_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pause()V

    .line 218
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$400(Lcom/youku/player/plugin/PluginSimplePlayer;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_play_big_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 236
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-boolean v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->isBack:Z

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->isBack:Z

    .line 238
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$402(Lcom/youku/player/plugin/PluginSimplePlayer;Z)Z

    .line 239
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_pause_big_detail_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->userAction()V

    goto :goto_0

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_play_big_detail_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 227
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$400(Lcom/youku/player/plugin/PluginSimplePlayer;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 229
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_pause_big_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 232
    :cond_6
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$4;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_pause_big_detail_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method
