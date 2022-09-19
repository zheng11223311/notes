.class public Lcom/tudou/detail/fragment/VideoFeatureFragment;
.super Landroid/app/Fragment;
.source "VideoFeatureFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;,
        Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;,
        Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_VIDEOFEATURE:Ljava/lang/String; = "bundle.video.feature"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

.field private mFeatureGrid:Landroid/widget/GridView;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field private mOnFeatureItemClickLis:Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;

.field private mTitleLayout:Landroid/view/View;

.field private mVideoFeatureAdapter:Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/fragment/VideoFeatureFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoFeatureFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mOnCloseListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/fragment/VideoFeatureFragment;)Lcom/tudou/detail/vo/DetailFeature;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoFeatureFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    return-object v0
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;

    invoke-direct {v0, p0}, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;-><init>(Lcom/tudou/detail/fragment/VideoFeatureFragment;)V

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mVideoFeatureAdapter:Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;

    .line 71
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mFeatureGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mVideoFeatureAdapter:Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    sget-object v1, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 143
    const-string v1, "bundle.video.feature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/DetailFeature;

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    .line 144
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {p0, v1}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->setData(Lcom/tudou/detail/vo/DetailFeature;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    sget-object v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    sget-object v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 7
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 122
    sget-object v2, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateAnimator enter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    if-ne p3, v6, :cond_0

    .line 127
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 128
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 129
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v6

    .line 130
    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 131
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v3, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    sget-object v1, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const v1, 0x7f0300c4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 212
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 206
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 218
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    sget-object v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 194
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 178
    sget-object v2, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v3, "onResume"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 180
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 181
    .local v0, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "vid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    invoke-virtual {p0, v1}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->setSelection(Ljava/lang/String;)V

    .line 187
    .end local v1    # "vid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 174
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 200
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    sget-object v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const v0, 0x7f0c03b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mFeatureGrid:Landroid/widget/GridView;

    .line 104
    const v0, 0x7f0c03ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mTitleLayout:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mTitleLayout:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/fragment/VideoFeatureFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoFeatureFragment$1;-><init>(Lcom/tudou/detail/fragment/VideoFeatureFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public setData(Lcom/tudou/detail/vo/DetailFeature;)V
    .locals 0
    .param p1, "feature"    # Lcom/tudou/detail/vo/DetailFeature;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    .line 150
    invoke-direct {p0}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->updateView()V

    .line 151
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mOnCloseListener:Ljava/lang/Runnable;

    .line 63
    return-void
.end method

.method public setOnFeatureItemClickListener(Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;)V
    .locals 0
    .param p1, "lis"    # Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mOnFeatureItemClickLis:Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;

    .line 67
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v2, p1}, Lcom/tudou/detail/vo/DetailFeature;->getFeatureByVid(Ljava/lang/String;)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v0

    .line 157
    .local v0, "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    if-eqz v0, :cond_0

    .line 158
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    iget-object v2, v2, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 159
    .local v1, "index":I
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mVideoFeatureAdapter:Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;

    iput v1, v2, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->mSelection:I

    .line 160
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mVideoFeatureAdapter:Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;

    invoke-virtual {v2}, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->notifyDataSetChanged()V

    .line 161
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment;->mFeatureGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 167
    .end local v0    # "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    .end local v1    # "index":I
    :cond_0
    return-void
.end method
