.class public Lio/rong/imkit/widget/provider/TakingPicturesActivity;
.super Landroid/app/Activity;
.source "TakingPicturesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_CAMERA:I = 0x2


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mSavedPicUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startCamera()V
    .locals 8

    .prologue
    .line 86
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 89
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    .line 95
    const-string/jumbo v4, "startCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "output pic uri ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v4, "output"

    iget-object v5, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 105
    const-string v1, "onActivityResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eq p2, v4, :cond_0

    .line 108
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->finish()V

    .line 132
    :goto_0
    return-void

    .line 112
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    if-nez p2, :cond_1

    .line 115
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->finish()V

    .line 116
    const-string v1, "TakingPicturesActivity"

    const-string v2, "RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    if-ne p2, v4, :cond_2

    .line 121
    :try_start_0
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    const/16 v3, 0x3c0

    const/16 v4, 0x3c0

    invoke-static {p0, v2, v3, v4}, Lio/rong/message/utils/BitmapUtil;->getResizedBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->finish()V

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lio/rong/imkit/R$id;->rc_send:I

    if-ne v2, v3, :cond_3

    .line 74
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, "data":Landroid/content/Intent;
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->setResult(ILandroid/content/Intent;)V

    .line 79
    .end local v0    # "data":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->finish()V

    .line 83
    :cond_2
    :goto_0
    return-void

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lio/rong/imkit/R$id;->rc_back:I

    if-ne v2, v3, :cond_2

    .line 81
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->requestWindowFeature(I)Z

    .line 36
    sget v4, Lio/rong/imkit/R$layout;->rc_ac_camera:I

    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->setContentView(I)V

    .line 37
    sget v4, Lio/rong/imkit/R$id;->rc_back:I

    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    .local v0, "cancel":Landroid/widget/Button;
    sget v4, Lio/rong/imkit/R$id;->rc_send:I

    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 39
    .local v2, "send":Landroid/widget/Button;
    sget v4, Lio/rong/imkit/R$id;->rc_img:I

    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mImage:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-string v4, "onCreate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "savedInstanceState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-nez p1, :cond_1

    .line 46
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->startCamera()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v4, "photo_uri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 50
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    .line 52
    :try_start_0
    iget-object v4, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    const/16 v6, 0x3c0

    const/16 v7, 0x3c0

    invoke-static {p0, v5, v6, v7}, Lio/rong/message/utils/BitmapUtil;->getResizedBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    const-string v0, "TakingPicturesActivity"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 140
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    const-string v0, "TakingPicturesActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "photo_uri"

    iget-object v1, p0, Lio/rong/imkit/widget/provider/TakingPicturesActivity;->mSavedPicUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    return-void
.end method
