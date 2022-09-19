.class public Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;
.super Landroid/widget/LinearLayout;
.source "RecommendRoomsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$OnRoomClickListener;
    }
.end annotation


# instance fields
.field private mActorAvatar:Landroid/widget/ImageView;

.field private mActorGuizuLevel:Landroid/widget/ImageView;

.field private mActorLayout:Landroid/widget/LinearLayout;

.field private mActorLevel:Landroid/widget/ImageView;

.field private mActorName:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$OnRoomClickListener;

.field private mLiveHouseRoom1Layout:Landroid/widget/RelativeLayout;

.field private mLiveHouseRoom2Layout:Landroid/widget/RelativeLayout;

.field private mLiveHouseRoom3Layout:Landroid/widget/RelativeLayout;

.field private mNextPlayTime:Landroid/widget/TextView;

.field private mNumber:I

.field private mRecommendRoomLabel:Landroid/widget/TextView;

.field private mRecommendRoomsLayout:Landroid/widget/LinearLayout;

.field private mRoom1Layout:Landroid/widget/LinearLayout;

.field private mRoom2Layout:Landroid/widget/LinearLayout;

.field private mRoom3Layout:Landroid/widget/LinearLayout;

.field private mRoomOneImage:Landroid/widget/ImageView;

.field private mRoomOneName:Landroid/widget/TextView;

.field private mRoomThreeImage:Landroid/widget/ImageView;

.field private mRoomThreeName:Landroid/widget/TextView;

.field private mRoomTwoImage:Landroid/widget/ImageView;

.field private mRoomTwoName:Landroid/widget/TextView;

.field private mRoomType:Ljava/lang/String;

.field mRoomsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomsArrayList:Ljava/util/ArrayList;

    .line 65
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;)Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$OnRoomClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mListener:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$OnRoomClickListener;

    return-object v0
.end method

.method private setRecommendRoomsGone()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRecommendRoomsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    return-void
.end method

.method private setRecommendRoomsVisible()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRecommendRoomsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 8
    .param p1, "roomType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 69
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    .line 70
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 71
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 72
    .local v1, "mScreenWidth":I
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout"

    const-string v6, "lf_view_recommend_rooms_livehouse"

    invoke-static {v4, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    .line 74
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "live_house_recommend_room_one"

    invoke-static {v4, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mLiveHouseRoom1Layout:Landroid/widget/RelativeLayout;

    .line 75
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mLiveHouseRoom1Layout:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$1;

    invoke-direct {v4, p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$1;-><init>(Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "live_house_recommend_room_two"

    invoke-static {v4, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mLiveHouseRoom2Layout:Landroid/widget/RelativeLayout;

    .line 85
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mLiveHouseRoom2Layout:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$2;

    invoke-direct {v4, p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$2;-><init>(Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "live_house_recommend_room_three"

    invoke-static {v4, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mLiveHouseRoom3Layout:Landroid/widget/RelativeLayout;

    .line 95
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mLiveHouseRoom3Layout:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$3;

    invoke-direct {v4, p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$3;-><init>(Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->initView()V

    .line 142
    return-void

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout"

    const-string v6, "lf_view_recommend_rooms"

    invoke-static {v4, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    .line 105
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "id"

    const-string/jumbo v6, "recommend_room_one"

    invoke-static {v4, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoom1Layout:Landroid/widget/LinearLayout;

    .line 106
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoom1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 107
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 108
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 109
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoom1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoom1Layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$4;

    invoke-direct {v4, p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$4;-><init>(Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "id"

    const-string/jumbo v6, "recommend_room_two"

    invoke-static {v4, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoom2Layout:Landroid/widget/LinearLayout;

    .line 119
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoom2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoom2Layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$5;

    invoke-direct {v4, p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$5;-><init>(Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "id"

    const-string/jumbo v6, "recommend_room_three"

    invoke-static {v4, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoom3Layout:Landroid/widget/LinearLayout;

    .line 129
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoom3Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoom3Layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$6;

    invoke-direct {v4, p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$6;-><init>(Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "live_room_recommend_label"

    invoke-static {v4, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRecommendRoomLabel:Landroid/widget/TextView;

    goto/16 :goto_0
.end method

.method public initView()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "actor_info_layout"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorLayout:Landroid/widget/LinearLayout;

    .line 146
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string/jumbo v3, "recommend_rooms_layout"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRecommendRoomsLayout:Landroid/widget/LinearLayout;

    .line 148
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string/jumbo v3, "recommend_room_one_image"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomOneImage:Landroid/widget/ImageView;

    .line 150
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string/jumbo v3, "recommend_room_two_image"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomTwoImage:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string/jumbo v3, "recommend_room_three_image"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomThreeImage:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string/jumbo v3, "recommend_actor_one_name"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomOneName:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string/jumbo v3, "recommend_actor_two_name"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomTwoName:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string/jumbo v3, "recommend_actor_three_name"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomThreeName:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "actor_avatar"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorAvatar:Landroid/widget/ImageView;

    .line 161
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "actor_level"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorLevel:Landroid/widget/ImageView;

    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "actor_guizu_level"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorGuizuLevel:Landroid/widget/ImageView;

    .line 163
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "actor_name"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorName:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "play_time_view"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mNextPlayTime:Landroid/widget/TextView;

    .line 165
    return-void
.end method

.method public isInVisible()Z
    .locals 2

    .prologue
    .line 306
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActorInfo(Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;)V
    .locals 12
    .param p1, "roomInfo"    # Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    .prologue
    .line 169
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    const-string v9, "faceUrl"

    invoke-virtual {p1, v9}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorAvatar:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getAppInstance()Lcom/youku/LaifengSDKApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/youku/LaifengSDKApplication;->getRoundOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 171
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 172
    const-string v8, "al"

    invoke-virtual {p1, v8}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/corncop/virgo/VirgoValueUtil;->safeValueOf(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 173
    .local v1, "actorLevel":I
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 174
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorLevel:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorLevel:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    .end local v1    # "actorLevel":I
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 184
    const-string/jumbo v8, "ul"

    invoke-virtual {p1, v8}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/corncop/virgo/VirgoValueUtil;->safeValueOf(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    .local v0, "actorGuizuLevel":I
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getUserLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 186
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorGuizuLevel:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getUserLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorGuizuLevel:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    .end local v0    # "actorGuizuLevel":I
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorName:Landroid/widget/TextView;

    const-string v9, "nn"

    invoke-virtual {p1, v9}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const-string v8, "ns"

    invoke-virtual {p1, v8}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 198
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mNextPlayTime:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_2
    return-void

    .line 177
    .restart local v1    # "actorLevel":I
    :cond_2
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorLevel:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 179
    .end local v1    # "actorLevel":I
    :cond_3
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    const-string v9, "3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 180
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorLevel:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 189
    .restart local v0    # "actorGuizuLevel":I
    :cond_4
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorGuizuLevel:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 191
    .end local v0    # "actorGuizuLevel":I
    :cond_5
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    const-string v9, "3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 192
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorGuizuLevel:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 200
    :cond_6
    const-string v8, "ns"

    invoke-virtual {p1, v8}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "mTimeStamp":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 202
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 203
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v7, v8, 0x1

    .line 204
    .local v7, "month":I
    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 205
    .local v3, "day":I
    const/16 v8, 0xb

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 206
    .local v4, "hour":I
    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 207
    .local v6, "min":I
    if-nez v6, :cond_7

    .line 208
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mNextPlayTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u76f4\u64ad\u65f6\u95f4\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u6708"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u65e5"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "00"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 210
    :cond_7
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mNextPlayTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u76f4\u64ad\u65f6\u95f4\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u6708"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u65e5"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public setGone()V
    .locals 1

    .prologue
    .line 290
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setVisibility(I)V

    .line 291
    return-void
.end method

.method public setOnRoomClickListener(Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$OnRoomClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$OnRoomClickListener;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mListener:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$OnRoomClickListener;

    .line 315
    return-void
.end method

.method public setRecommendRoomsData(Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "roomInfo"    # Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 261
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->getFactory()Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    move-result-object v2

    const-class v3, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;

    invoke-virtual {v2, v3, p2}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;

    .line 262
    .local v1, "r":Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;->getRecommendRoomList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setVisible()V

    .line 264
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 265
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setRecommendRoomsVisible()V

    .line 268
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRecommendRoomLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    :cond_0
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setActorInfo(Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;)V

    .line 272
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;->getRecommendRoomList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;->getRecommendRoomList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setRecommendRoomsInfo(Ljava/util/ArrayList;I)V

    .line 283
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setVisible()V

    .line 275
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setRecommendRoomsGone()V

    .line 276
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 277
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mActorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRecommendRoomLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :cond_2
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setActorInfo(Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;)V

    goto :goto_0
.end method

.method public setRecommendRoomsInfo(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "roomsArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;>;"
    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 216
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomsArrayList:Ljava/util/ArrayList;

    .line 217
    iput p2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mNumber:I

    .line 218
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mNumber:I

    if-ne v0, v5, :cond_3

    .line 219
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mLiveHouseRoom3Layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 225
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomOneName:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomTwoName:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->getHeaderUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomOneImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getAppInstance()Lcom/youku/LaifengSDKApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/LaifengSDKApplication;->getRectOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 231
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->getHeaderUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomTwoImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getAppInstance()Lcom/youku/LaifengSDKApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/LaifengSDKApplication;->getRectOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 256
    :cond_1
    :goto_1
    return-void

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoom3Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_3
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mNumber:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mLiveHouseRoom3Layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 241
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomOneName:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomTwoName:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomThreeName:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->getHeaderUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomOneImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getAppInstance()Lcom/youku/LaifengSDKApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/LaifengSDKApplication;->getRectOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 249
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->getHeaderUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomTwoImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getAppInstance()Lcom/youku/LaifengSDKApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/LaifengSDKApplication;->getRectOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 252
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->getHeaderUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomThreeImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getAppInstance()Lcom/youku/LaifengSDKApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/LaifengSDKApplication;->getRectOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_1

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoomType:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->mRoom3Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public setVisible()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setVisibility(I)V

    .line 287
    return-void
.end method
