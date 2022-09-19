.class public Lio/rong/imkit/tools/PhotoFragment;
.super Lio/rong/imkit/fragment/BaseFragment;
.source "PhotoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;
    }
.end annotation


# static fields
.field static final DOWNLOAD_PROGRESS:I = 0x3

.field static final REQ_FAILURE:I = 0x4

.field static final REQ_PHOTO:I = 0x1

.field static final SHOW_PHOTO:I = 0x2


# instance fields
.field mListener:Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;

.field mPhotoView:Luk/co/senab/photoview/PhotoView;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mProgressText:Landroid/widget/TextView;

.field private mRcvDataCallback:Lcom/sea_monster/network/StoreStatusCallback;

.field mThumbnail:Landroid/net/Uri;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lio/rong/imkit/fragment/BaseFragment;-><init>()V

    .line 157
    new-instance v0, Lio/rong/imkit/tools/PhotoFragment$2;

    invoke-direct {v0, p0}, Lio/rong/imkit/tools/PhotoFragment$2;-><init>(Lio/rong/imkit/tools/PhotoFragment;)V

    iput-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mRcvDataCallback:Lcom/sea_monster/network/StoreStatusCallback;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PhotoFragment;

    .prologue
    .line 38
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PhotoFragment;

    .prologue
    .line 38
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imkit/tools/PhotoFragment;)Lcom/sea_monster/network/StoreStatusCallback;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PhotoFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mRcvDataCallback:Lcom/sea_monster/network/StoreStatusCallback;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PhotoFragment;

    .prologue
    .line 38
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PhotoFragment;

    .prologue
    .line 38
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PhotoFragment;

    .prologue
    .line 38
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PhotoFragment;

    .prologue
    .line 38
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lio/rong/imkit/tools/PhotoFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PhotoFragment;

    .prologue
    .line 38
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 79
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 81
    :pswitch_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    new-instance v8, Lio/rong/imkit/tools/PhotoFragment$1;

    invoke-direct {v8, p0}, Lio/rong/imkit/tools/PhotoFragment$1;-><init>(Lio/rong/imkit/tools/PhotoFragment;)V

    invoke-virtual {v7, v8}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    .line 111
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mProgressText:Landroid/widget/TextView;

    const-string v8, "0%"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    .line 117
    .local v6, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mListener:Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;

    if-eqz v7, :cond_1

    .line 120
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mListener:Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;

    invoke-interface {v7, v6}, Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;->onDownloaded(Landroid/net/Uri;)V

    .line 122
    :cond_1
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    const/16 v8, 0x3c0

    const/16 v9, 0x3c0

    invoke-static {v7, v6, v8, v9}, Lio/rong/message/utils/BitmapUtil;->getResizedBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 123
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v7, v1}, Luk/co/senab/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 124
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v6    # "uri":Landroid/net/Uri;
    :pswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 132
    .local v5, "total":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 133
    .local v3, "received":I
    if-ge v3, v5, :cond_0

    .line 134
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mProgressText:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v9, v3, 0x64

    div-int/2addr v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    .end local v3    # "received":I
    .end local v5    # "total":I
    :pswitch_3
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    :try_start_1
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 141
    .local v0, "ac":Landroid/app/Activity;
    const-string v4, "Fail!"

    .line 142
    .local v4, "str":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$string;->rc_notice_download_fail:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    :cond_2
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 149
    .end local v0    # "ac":Landroid/app/Activity;
    .end local v4    # "str":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mListener:Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;

    if-eqz v7, :cond_0

    .line 150
    iget-object v7, p0, Lio/rong/imkit/tools/PhotoFragment;->mListener:Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;

    invoke-interface {v7}, Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;->onDownloadError()V

    goto/16 :goto_0

    .line 146
    :catch_2
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public initPhoto(Landroid/net/Uri;Landroid/net/Uri;Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "thumbnail"    # Landroid/net/Uri;
    .param p3, "listener"    # Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 166
    iput-object p1, p0, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    .line 167
    iput-object p2, p0, Lio/rong/imkit/tools/PhotoFragment;->mThumbnail:Landroid/net/Uri;

    .line 168
    iput-object p3, p0, Lio/rong/imkit/tools/PhotoFragment;->mListener:Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;

    .line 170
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    if-nez v0, :cond_2

    .line 171
    :cond_0
    const-string v0, "initPhoto"

    const-string v1, "Scheme is null!"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/tools/PhotoFragment$3;

    invoke-direct {v1, p0, p2}, Lio/rong/imkit/tools/PhotoFragment$3;-><init>(Lio/rong/imkit/tools/PhotoFragment;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 191
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v8

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 193
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    move-object v7, p1

    .line 198
    .local v7, "image":Landroid/net/Uri;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 201
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 202
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 203
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "image":Landroid/net/Uri;
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 58
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_photo:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->rc_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Luk/co/senab/photoview/PhotoView;

    iput-object v1, p0, Lio/rong/imkit/tools/PhotoFragment;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    .line 60
    sget v1, Lio/rong/imkit/R$id;->rc_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lio/rong/imkit/tools/PhotoFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 61
    sget v1, Lio/rong/imkit/R$id;->rc_txt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/imkit/tools/PhotoFragment;->mProgressText:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 63
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v0

    new-instance v1, Lcom/sea_monster/resource/Resource;

    iget-object v2, p0, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/sea_monster/resource/ResourceHandler;->cancel(Lcom/sea_monster/resource/Resource;)V

    .line 222
    :cond_0
    invoke-super {p0}, Lio/rong/imkit/fragment/BaseFragment;->onDestroy()V

    .line 223
    return-void
.end method

.method public onRestoreUI()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 227
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "imageUri"

    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mThumbnail:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 230
    const-string/jumbo v0, "thumbnailUri"

    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment;->mThumbnail:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 231
    :cond_1
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    return-void
.end method
