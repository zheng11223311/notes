.class public Lcom/tudou/ui/activity/CacheActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "CacheActivity.java"


# static fields
.field public static final CACHED_TAB:Ljava/lang/String; = "cached_tab"

.field public static final CACHE_TAB:Ljava/lang/String; = "cache_tab"

.field public static final CACHE_VIEWPAGE:I = 0x1

.field public static final CACHING_TAB:Ljava/lang/String; = "caching_tab"

.field public static final IMG_LOAD_TAG:Ljava/lang/String; = "cache"

.field public static final REFRESH_BOTH:I = 0x2

.field public static final REFRESH_CACHING:I = 0x1


# instance fields
.field private broadCastReceiver:Landroid/content/BroadcastReceiver;

.field public cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

.field public hasDeleted:Z

.field manager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    .line 101
    new-instance v0, Lcom/tudou/ui/activity/CacheActivity$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CacheActivity$1;-><init>(Lcom/tudou/ui/activity/CacheActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/CacheActivity;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/activity/CacheActivity;->hasDeleted:Z

    return-void
.end method

.method private registBroadCastReciver()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "com.tudou.serivce.download.ACTION_DOWNLOAD_NEEDREFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_SDCRAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "com.tudou.service.download.ACTION_SDCARD_PATH_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheActivity;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/tudou/ui/activity/CacheActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method private unRegistBroadCastReceiver()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tudou/ui/activity/CacheActivity;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/tudou/ui/activity/CacheActivity;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CacheActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/activity/CacheActivity;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 144
    iget-boolean v1, p0, Lcom/tudou/ui/activity/CacheActivity;->hasDeleted:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/tudou/ui/fragment/CachingFolderFragment;->hasDelete:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/tudou/ui/fragment/CacheFolderFragment;->hasDelete:Z

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "isdelete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tudou/ui/activity/CacheActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    .end local v0    # "data":Landroid/content/Intent;
    :cond_1
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 150
    return-void
.end method

.method public goFragment(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/activity/CacheActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c00ec

    iget-object v2, p0, Lcom/tudou/ui/activity/CacheActivity;->cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "cacheFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/CacheActivity;->requestWindowFeature(I)Z

    .line 41
    const v2, 0x7f030011

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/CacheActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/tudou/ui/activity/CacheActivity;->registBroadCastReciver()V

    .line 43
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CacheActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/activity/CacheActivity;->manager:Landroid/support/v4/app/FragmentManager;

    .line 44
    new-instance v2, Lcom/tudou/ui/fragment/CacheFragment;

    invoke-direct {v2}, Lcom/tudou/ui/fragment/CacheFragment;-><init>()V

    iput-object v2, p0, Lcom/tudou/ui/activity/CacheActivity;->cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

    .line 46
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CacheActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "cache_tab"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "tab":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "cache_tab"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cached_tab"

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/tudou/ui/activity/CacheActivity;->cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v2, v0}, Lcom/tudou/ui/fragment/CacheFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/CacheActivity;->goFragment(I)V

    .line 52
    return-void

    .line 48
    :cond_0
    const-string v2, "caching_tab"

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onDestroy()V

    .line 138
    invoke-direct {p0}, Lcom/tudou/ui/activity/CacheActivity;->unRegistBroadCastReceiver()V

    .line 139
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 84
    const-string v1, "cache"

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    :goto_0
    return v0

    .line 86
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheActivity;->cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/activity/CacheActivity;->cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/CacheFragment;->getEdit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheActivity;->cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/CacheFragment;->outEditState()V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CacheActivity;->finish()V

    goto :goto_0

    .line 93
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/tudou/ui/activity/CacheActivity;->setIntent(Landroid/content/Intent;)V

    .line 71
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 72
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheActivity;->cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/CacheFragment;->getEdit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v1, "cache_tab"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "tab":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "caching_tab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheActivity;->cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/CacheFragment;->setCurrentFragment(I)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheActivity;->cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/CacheFragment;->setCurrentFragment(I)V

    goto :goto_0
.end method
