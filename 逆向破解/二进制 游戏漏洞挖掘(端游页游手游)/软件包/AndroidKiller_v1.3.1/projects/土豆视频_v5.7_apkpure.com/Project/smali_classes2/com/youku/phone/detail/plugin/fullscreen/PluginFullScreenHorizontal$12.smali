.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1065
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "notlocked"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1067
    :cond_0
    const-string v1, "t1.detail_player.fixed"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1068
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "locked"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1069
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0206a0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1070
    const-string v1, "video_lock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1071
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1072
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    .line 1081
    :goto_0
    return-void

    .line 1074
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "notlocked"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1075
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0206a1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1076
    const-string v1, "video_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1077
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1078
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    goto :goto_0
.end method
