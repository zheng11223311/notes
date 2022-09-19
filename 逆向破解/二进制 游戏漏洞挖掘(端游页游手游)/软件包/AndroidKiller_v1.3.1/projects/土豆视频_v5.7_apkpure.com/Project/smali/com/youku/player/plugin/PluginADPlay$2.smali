.class Lcom/youku/player/plugin/PluginADPlay$2;
.super Ljava/lang/Object;
.source "PluginADPlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginADPlay;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginADPlay;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginADPlay;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/youku/player/plugin/PluginADPlay$2;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 162
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$2;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginADPlay;->mCountUpdateTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$2;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginADPlay;->mCountUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$2;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginADPlay;->ad_more:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$2;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginADPlay;->mAdSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$2;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginADPlay;->mAdSkipBlank:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    sget v0, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$2;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginADPlay;->mCountUpdateWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$2;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginADPlay;->hideTrueViewAd()V

    .line 171
    :cond_0
    return-void
.end method
