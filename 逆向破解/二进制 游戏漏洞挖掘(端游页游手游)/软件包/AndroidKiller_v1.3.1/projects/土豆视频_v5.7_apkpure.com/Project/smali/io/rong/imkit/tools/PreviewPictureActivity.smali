.class public Lio/rong/imkit/tools/PreviewPictureActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PreviewPictureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;,
        Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;

.field private mButtonBack:Landroid/widget/Button;

.field private mButtonSend:Landroid/widget/Button;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurrentPage:Landroid/widget/TextView;

.field private mCurrentPicIndex:I

.field private mSelectedPics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;",
            ">;"
        }
    .end annotation
.end field

.field private previewedPictures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mCurrentPicIndex:I

    .line 184
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/tools/PreviewPictureActivity;)I
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PreviewPictureActivity;

    .prologue
    .line 28
    iget v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mCurrentPicIndex:I

    return v0
.end method

.method static synthetic access$100(Lio/rong/imkit/tools/PreviewPictureActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PreviewPictureActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mSelectedPics:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imkit/tools/PreviewPictureActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PreviewPictureActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mButtonSend:Landroid/widget/Button;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 78
    sget v1, Lio/rong/imkit/R$id;->rc_pager:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/tools/PreviewPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 79
    .local v0, "viewPager":Landroid/support/v4/view/ViewPager;
    sget v1, Lio/rong/imkit/R$id;->rc_back:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/tools/PreviewPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mButtonBack:Landroid/widget/Button;

    .line 80
    sget v1, Lio/rong/imkit/R$id;->rc_send:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/tools/PreviewPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mButtonSend:Landroid/widget/Button;

    .line 81
    sget v1, Lio/rong/imkit/R$id;->rc_msg:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/tools/PreviewPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mCurrentPage:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mCurrentPage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->previewedPictures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    sget v1, Lio/rong/imkit/R$id;->rc_checkbox:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/tools/PreviewPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 85
    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mButtonSend:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 87
    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mButtonSend:Landroid/widget/Button;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 88
    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mButtonSend:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/rong/imkit/tools/PreviewPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_input_send:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->previewedPictures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mButtonBack:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mButtonSend:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lio/rong/imkit/tools/PreviewPictureActivity$1;

    invoke-direct {v2, p0}, Lio/rong/imkit/tools/PreviewPictureActivity$1;-><init>(Lio/rong/imkit/tools/PreviewPictureActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->previewedPictures:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;

    invoke-virtual {p0}, Lio/rong/imkit/tools/PreviewPictureActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->previewedPictures:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;-><init>(Lio/rong/imkit/tools/PreviewPictureActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mAdapter:Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;

    .line 122
    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mAdapter:Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 123
    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v2, "sendUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v4, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mSelectedPics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;

    .line 50
    .local v3, "state":Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;
    invoke-virtual {v3}, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->isSelect()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v5, :cond_0

    .line 51
    invoke-virtual {v3}, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v3    # "state":Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->previewedPictures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 55
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v4, "BACK_RESULT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v5, v1}, Lio/rong/imkit/tools/PreviewPictureActivity;->setResult(ILandroid/content/Intent;)V

    .line 58
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v2, "sendUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v4, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mSelectedPics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;

    .line 216
    .local v3, "state":Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;
    invoke-virtual {v3}, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->isSelect()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 217
    invoke-virtual {v3}, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .end local v3    # "state":Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lio/rong/imkit/R$id;->rc_back:I

    if-ne v4, v5, :cond_3

    .line 221
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v4, "BACK_RESULT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v6, v1}, Lio/rong/imkit/tools/PreviewPictureActivity;->setResult(ILandroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lio/rong/imkit/tools/PreviewPictureActivity;->finish()V

    .line 231
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 225
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lio/rong/imkit/R$id;->rc_send:I

    if-ne v4, v5, :cond_2

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .restart local v1    # "mIntent":Landroid/content/Intent;
    const-string v4, "PREVIEW_RESULT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v6, v1}, Lio/rong/imkit/tools/PreviewPictureActivity;->setResult(ILandroid/content/Intent;)V

    .line 229
    invoke-virtual {p0}, Lio/rong/imkit/tools/PreviewPictureActivity;->finish()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0, v5}, Lio/rong/imkit/tools/PreviewPictureActivity;->requestWindowFeature(I)Z

    .line 65
    sget v1, Lio/rong/imkit/R$layout;->rc_ac_preview:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/tools/PreviewPictureActivity;->setContentView(I)V

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mSelectedPics:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p0}, Lio/rong/imkit/tools/PreviewPictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ArrayList"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->previewedPictures:Ljava/util/ArrayList;

    .line 69
    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->previewedPictures:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->previewedPictures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v2, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mSelectedPics:Ljava/util/ArrayList;

    new-instance v3, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;

    iget-object v1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->previewedPictures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;-><init>(Lio/rong/imkit/tools/PreviewPictureActivity;Landroid/net/Uri;Ljava/lang/Boolean;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lio/rong/imkit/tools/PreviewPictureActivity;->initView()V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 236
    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->previewedPictures:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->previewedPictures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 239
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 151
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 131
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x1

    .line 136
    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mCurrentPage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->previewedPictures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iput p1, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mCurrentPicIndex:I

    .line 140
    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mSelectedPics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;

    invoke-virtual {v0}, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->isSelect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 141
    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
