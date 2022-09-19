.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate$1;
.super Ljava/lang/Object;
.source "FullScreenClickOperate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->initSoloPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 83
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "play_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 103
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void

    .line 86
    :pswitch_0
    const-string v1, "play_mode"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-static {v5}, Lcom/youku/player/goplay/Profile;->setPlayMode(I)V

    .line 88
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->soloReplay:Landroid/widget/TextView;

    const-string v2, "\u4e0d\u8fde\u64ad"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :pswitch_1
    const-string v1, "play_mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-static {v4}, Lcom/youku/player/goplay/Profile;->setPlayMode(I)V

    .line 93
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->soloReplay:Landroid/widget/TextView;

    const-string v2, "\u59cb\u7ec8\u8fde\u64ad"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :pswitch_2
    const-string v1, "play_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-static {v3}, Lcom/youku/player/goplay/Profile;->setPlayMode(I)V

    .line 98
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->soloReplay:Landroid/widget/TextView;

    const-string v2, "\u5355\u66f2\u5faa\u73af"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
