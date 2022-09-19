.class Lcom/tudou/ui/activity/DetailActivity$14;
.super Landroid/content/BroadcastReceiver;
.source "DetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/DetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 0

    .prologue
    .line 2097
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2102
    .local v0, "action":Ljava/lang/String;
    const-string v5, "allowONline3G"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2103
    .local v3, "tAllowONLine3G":Z
    invoke-static {}, Lcom/tudou/ui/activity/DetailActivity;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    invoke-static {}, Lcom/tudou/ui/activity/DetailActivity;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive Util.hasInternet() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    invoke-static {}, Lcom/tudou/ui/activity/DetailActivity;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive mNetState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v7}, Lcom/tudou/ui/activity/DetailActivity;->access$1200(Lcom/tudou/ui/activity/DetailActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    invoke-static {}, Lcom/tudou/ui/activity/DetailActivity;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive Util.isWifi() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    invoke-static {}, Lcom/tudou/ui/activity/DetailActivity;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive allowONline3G = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2110
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v5}, Lcom/tudou/ui/activity/DetailActivity;->access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2190
    :cond_0
    :goto_0
    return-void

    .line 2112
    :cond_1
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v5}, Lcom/tudou/ui/activity/DetailActivity;->access$1300(Lcom/tudou/ui/activity/DetailActivity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2114
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2115
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2116
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v5}, Lcom/tudou/ui/activity/DetailActivity;->access$1300(Lcom/tudou/ui/activity/DetailActivity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2119
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v5}, Lcom/tudou/ui/activity/DetailActivity;->access$1200(Lcom/tudou/ui/activity/DetailActivity;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 2120
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/tudou/ui/activity/DetailActivity$14$1;

    invoke-direct {v6, p0}, Lcom/tudou/ui/activity/DetailActivity$14$1;-><init>(Lcom/tudou/ui/activity/DetailActivity$14;)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2130
    :cond_2
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/tudou/ui/activity/DetailActivity;->access$1202(Lcom/tudou/ui/activity/DetailActivity;I)I

    .line 2132
    const-string v5, "3g_play_notify"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2133
    const-string v5, "3g_play_notify"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2135
    :cond_3
    const-string v5, "allowONline3G"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2136
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const v6, 0x7f0c0c0f

    invoke-virtual {v5, v6}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2137
    .local v2, "smallHint3gonlineLayout":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 2138
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2140
    :cond_4
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const v6, 0x7f0c0b90

    invoke-virtual {v5, v6}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2141
    .local v1, "fullscreenHint3gonlineLyout":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 2142
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2144
    :cond_5
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const v6, 0x7f0c0bf7

    invoke-virtual {v5, v6}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2145
    .local v4, "vertical3GLayout":Landroid/view/View;
    if-eqz v4, :cond_6

    .line 2146
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2148
    :cond_6
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/tudou/ui/activity/DetailActivity;->is3GPause:Z

    .line 2150
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v5}, Lcom/tudou/ui/activity/DetailActivity;->access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    goto/16 :goto_0

    .line 2154
    .end local v1    # "fullscreenHint3gonlineLyout":Landroid/view/View;
    .end local v2    # "smallHint3gonlineLayout":Landroid/view/View;
    .end local v4    # "vertical3GLayout":Landroid/view/View;
    :cond_7
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v5}, Lcom/tudou/ui/activity/DetailActivity;->access$1200(Lcom/tudou/ui/activity/DetailActivity;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 2155
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/tudou/ui/activity/DetailActivity$14$2;

    invoke-direct {v6, p0}, Lcom/tudou/ui/activity/DetailActivity$14$2;-><init>(Lcom/tudou/ui/activity/DetailActivity$14;)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2165
    :cond_8
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/tudou/ui/activity/DetailActivity;->access$1202(Lcom/tudou/ui/activity/DetailActivity;I)I

    .line 2166
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const v6, 0x7f0c0c0f

    invoke-virtual {v5, v6}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2167
    .restart local v2    # "smallHint3gonlineLayout":Landroid/view/View;
    if-eqz v2, :cond_9

    .line 2168
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2170
    :cond_9
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const v6, 0x7f0c0b90

    invoke-virtual {v5, v6}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2171
    .restart local v1    # "fullscreenHint3gonlineLyout":Landroid/view/View;
    if-eqz v1, :cond_a

    .line 2172
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2174
    :cond_a
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const v6, 0x7f0c0bf7

    invoke-virtual {v5, v6}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2175
    .restart local v4    # "vertical3GLayout":Landroid/view/View;
    if-eqz v4, :cond_b

    .line 2176
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2178
    :cond_b
    const-string v5, "3g_play_notify"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2179
    const-string v5, "3g_play_notify"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2180
    :cond_c
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v5, v5, Lcom/tudou/ui/activity/DetailActivity;->is3GPause:Z

    if-eqz v5, :cond_0

    .line 2181
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v5}, Lcom/tudou/ui/activity/DetailActivity;->access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 2182
    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$14;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/tudou/ui/activity/DetailActivity;->is3GPause:Z

    goto/16 :goto_0
.end method
