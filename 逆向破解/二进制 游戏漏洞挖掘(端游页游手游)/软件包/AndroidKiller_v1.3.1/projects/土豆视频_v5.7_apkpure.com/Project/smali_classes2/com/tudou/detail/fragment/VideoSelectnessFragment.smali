.class public Lcom/tudou/detail/fragment/VideoSelectnessFragment;
.super Landroid/app/Fragment;
.source "VideoSelectnessFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;,
        Lcom/tudou/detail/fragment/VideoSelectnessFragment$VideoSelectnessAdapter;,
        Lcom/tudou/detail/fragment/VideoSelectnessFragment$OnSelectnessItemClickListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_VIDEO_CARDINFO:Ljava/lang/String; = "bundle.video.cardinfo"

.field public static final BUNDLE_VIDEO_TITLE:Ljava/lang/String; = "bundle.video.title"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCardInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureGrid:Landroid/widget/GridView;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field private mOnFeatureItemClickLis:Lcom/tudou/detail/fragment/VideoSelectnessFragment$OnSelectnessItemClickListener;

.field private mTitle:Ljava/lang/String;

.field private mTitleLayout:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/fragment/VideoSelectnessFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mCardInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/fragment/VideoSelectnessFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mOnCloseListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mFeatureGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/tudou/detail/fragment/VideoSelectnessFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoSelectnessFragment$1;-><init>(Lcom/tudou/detail/fragment/VideoSelectnessFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mFeatureGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/tudou/detail/fragment/VideoSelectnessFragment$VideoSelectnessAdapter;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoSelectnessFragment$VideoSelectnessAdapter;-><init>(Lcom/tudou/detail/fragment/VideoSelectnessFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    sget-object v1, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 156
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 157
    const-string v1, "bundle.video.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mTitle:Ljava/lang/String;

    .line 158
    const-string v1, "bundle.video.cardinfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mCardInfos:Ljava/util/ArrayList;

    .line 159
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mCardInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->setData(Ljava/util/ArrayList;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    sget-object v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    sget-object v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
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

    .line 136
    sget-object v2, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

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

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    if-ne p3, v6, :cond_0

    .line 141
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 142
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 143
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v6

    .line 144
    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 145
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 142
    goto :goto_1

    .line 143
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
    .line 107
    sget-object v1, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const v1, 0x7f0300c8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 204
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 196
    sget-object v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 198
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 210
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    sget-object v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 186
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 179
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 173
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 192
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    sget-object v0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const v0, 0x7f0c03c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mFeatureGrid:Landroid/widget/GridView;

    .line 117
    const v0, 0x7f0c03c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mTitleView:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0c03c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mTitleLayout:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mTitleLayout:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/fragment/VideoSelectnessFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoSelectnessFragment$2;-><init>(Lcom/tudou/detail/fragment/VideoSelectnessFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "feature":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;>;"
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mCardInfos:Ljava/util/ArrayList;

    .line 165
    invoke-direct {p0}, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->updateView()V

    .line 166
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mOnCloseListener:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method public setOnFeatureItemClickListener(Lcom/tudou/detail/fragment/VideoSelectnessFragment$OnSelectnessItemClickListener;)V
    .locals 0
    .param p1, "lis"    # Lcom/tudou/detail/fragment/VideoSelectnessFragment$OnSelectnessItemClickListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->mOnFeatureItemClickLis:Lcom/tudou/detail/fragment/VideoSelectnessFragment$OnSelectnessItemClickListener;

    .line 66
    return-void
.end method
