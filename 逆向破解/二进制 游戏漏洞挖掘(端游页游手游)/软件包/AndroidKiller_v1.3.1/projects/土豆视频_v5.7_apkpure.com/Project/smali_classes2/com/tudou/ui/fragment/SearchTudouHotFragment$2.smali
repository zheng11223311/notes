.class Lcom/tudou/ui/fragment/SearchTudouHotFragment$2;
.super Ljava/lang/Object;
.source "SearchTudouHotFragment.java"

# interfaces
.implements Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchTudouHotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoItemClick(ZLjava/lang/String;ILcom/youku/vo/SearchOfVideo;)V
    .locals 6
    .param p1, "isVideo"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "pos"    # I
    .param p4, "video"    # Lcom/youku/vo/SearchOfVideo;

    .prologue
    .line 177
    const-string v2, "toSearch"

    const-wide/16 v4, 0x1f4

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-static {}, Lcom/tudou/ui/fragment/SearchManager;->getAaid()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    .line 186
    const-string v2, "1"

    sput-object v2, Lcom/tudou/ui/fragment/SearchManager;->kref:Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/fragment/SearchTudouFragment;

    const-string v3, "\u70ed\u8bcd"

    iput-object v3, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    .line 188
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3, p2, p3}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$800(Lcom/tudou/ui/fragment/SearchTudouHotFragment;ZLjava/lang/String;I)V

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "video_id":Ljava/lang/String;
    const/4 v0, 0x0

    .line 191
    .local v0, "album_id":Ljava/lang/String;
    if-eqz p4, :cond_3

    iget-object v2, p4, Lcom/youku/vo/SearchOfVideo;->skip_inf:Lcom/youku/vo/SearchOfVideo$Info;

    if-eqz v2, :cond_3

    .line 192
    iget-object v2, p4, Lcom/youku/vo/SearchOfVideo;->skip_inf:Lcom/youku/vo/SearchOfVideo$Info;

    iget-object v1, v2, Lcom/youku/vo/SearchOfVideo$Info;->video_id:Ljava/lang/String;

    .line 193
    iget-object v2, p4, Lcom/youku/vo/SearchOfVideo;->skip_inf:Lcom/youku/vo/SearchOfVideo$Info;

    iget-object v0, v2, Lcom/youku/vo/SearchOfVideo$Info;->album_id:Ljava/lang/String;

    .line 195
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 196
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$900(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v4, p4, Lcom/youku/vo/SearchOfVideo;->title:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$1000(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v4, p4, Lcom/youku/vo/SearchOfVideo;->title:Ljava/lang/String;

    invoke-static {v2, v0, v3, v4}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0
.end method
