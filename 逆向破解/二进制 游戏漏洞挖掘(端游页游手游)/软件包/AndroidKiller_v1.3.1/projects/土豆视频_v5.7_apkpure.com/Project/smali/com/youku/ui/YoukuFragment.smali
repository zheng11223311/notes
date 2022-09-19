.class public Lcom/youku/ui/YoukuFragment;
.super Landroid/support/v4/app/Fragment;
.source "YoukuFragment.java"


# instance fields
.field protected mActivity:Lcom/tudou/ui/activity/BaseActivity;

.field protected mFragmentView:Landroid/view/View;

.field private mImageWorker:Lcom/nostra13/universalimageloader/core/ImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/youku/ui/YoukuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    iput-object v0, p0, Lcom/youku/ui/YoukuFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 74
    iget-object v0, p0, Lcom/youku/ui/YoukuFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method public getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youku/ui/YoukuFragment;->mImageWorker:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method public getLeftBackIcon(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 265
    const v1, 0x7f0c024f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 266
    .local v0, "imageView":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    return-object v0
.end method

.method public getLeftIcon(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 259
    const v1, 0x7f0c01cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 260
    .local v0, "imageView":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    return-object v0
.end method

.method public getMiddleTextView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 248
    const v1, 0x7f0c00df

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    .local v0, "textView":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    return-object v0
.end method

.method public getRightImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/youku/ui/YoukuFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getRightImageView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getRightImageView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 190
    const v2, 0x7f0c0251

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, "view2":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_0
    const v2, 0x7f0c0253

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 195
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    return-object v0
.end method

.method public getRightImageView2(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 200
    const v2, 0x7f0c0251

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 201
    .local v1, "view2":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :cond_0
    const v2, 0x7f0c0252

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 205
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    return-object v0
.end method

.method public getRightImageView3(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 210
    const v2, 0x7f0c0251

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 211
    .local v1, "view2":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_0
    const v2, 0x7f0c0254

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 215
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    return-object v0
.end method

.method public getRightLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/youku/ui/YoukuFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getRightLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 139
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    return-object v0
.end method

.method public getRightLayout(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 230
    const v1, 0x7f0c0251

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, "view2":Landroid/view/View;
    return-object v0
.end method

.method public getRightLayout1(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 239
    const v1, 0x7f0c0251

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "view2":Landroid/view/View;
    return-object v0
.end method

.method public getTitleText()Landroid/view/View;
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/youku/ui/YoukuFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    .line 145
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/ui/YoukuFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/YoukuFragment;->mImageWorker:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 39
    const-string v0, "Tudou_Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/youku/ui/YoukuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    iput-object v0, p0, Lcom/youku/ui/YoukuFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const-string v0, "Tudou_Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 59
    const-string v0, "Tudou_Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onPageSelected()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 54
    const-string v0, "Tudou_Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 44
    const-string v0, "Tudou_Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    const-string v0, "Tudou_Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public setLeftImage(I)Landroid/widget/ImageView;
    .locals 3
    .param p1, "res"    # I

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/youku/ui/YoukuFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getleftImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 127
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 134
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :goto_0
    return-object v0

    .line 130
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    if-gez p1, :cond_1

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setRightImage(I)Landroid/widget/ImageView;
    .locals 3
    .param p1, "res"    # I

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/youku/ui/YoukuFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getRightImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 97
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 104
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :goto_0
    return-object v0

    .line 100
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    if-gez p1, :cond_1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 2
    .param p1, "rightTxt"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/youku/ui/YoukuFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getRighttext()Landroid/widget/TextView;

    move-result-object v0

    .line 112
    .local v0, "textView":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/youku/ui/YoukuFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    .line 80
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void
.end method

.method public showConfirmDialog(ILcom/youku/util/IConfirm$Status;)V
    .locals 1
    .param p1, "res"    # I
    .param p2, "tag"    # Lcom/youku/util/IConfirm$Status;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/youku/ui/YoukuFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->showConfirmDialog(ILcom/youku/util/IConfirm$Status;)V

    .line 187
    return-void
.end method

.method public showConfirmDialog(Ljava/lang/String;Lcom/youku/util/IConfirm$Status;)V
    .locals 1
    .param p1, "aMessage"    # Ljava/lang/String;
    .param p2, "tag"    # Lcom/youku/util/IConfirm$Status;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/youku/ui/YoukuFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->showConfirmDialog(Ljava/lang/String;Lcom/youku/util/IConfirm$Status;)V

    .line 183
    return-void
.end method
