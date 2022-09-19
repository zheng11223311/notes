.class public Lcom/tudou/detail/adapter/VideoCommentAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;,
        Lcom/tudou/detail/adapter/VideoCommentAdapter$OnImageClickListener;,
        Lcom/tudou/detail/adapter/VideoCommentAdapter$OnDigClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_ITEM:I = 0x1

.field public static final TYPE_TITLE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field public mDigClickLis:Lcom/tudou/detail/adapter/VideoCommentAdapter$OnDigClickListener;

.field private mHotTitleIndex:I

.field private mHotsSize:I

.field public mImageClickLis:Lcom/tudou/detail/adapter/VideoCommentAdapter$OnImageClickListener;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNewTitleIndex:I

.field private mNewsSize:I

.field private mSelection:I

.field private mVideoComment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/CommentsInfo$Comment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/tudou/detail/adapter/VideoCommentAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "news"    # Lcom/tudou/detail/vo/CommentsInfo;
    .param p3, "hots"    # Lcom/tudou/detail/vo/CommentsInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 76
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    iput v1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mHotsSize:I

    .line 69
    iput v1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mNewsSize:I

    .line 71
    iput v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mHotTitleIndex:I

    .line 72
    iput v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mNewTitleIndex:I

    .line 74
    iput v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mSelection:I

    .line 77
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 79
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 80
    invoke-virtual {p0, p2, p3}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->setData(Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V

    .line 81
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/adapter/VideoCommentAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/VideoCommentAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 84
    iput v1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mHotsSize:I

    .line 85
    iput v1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mNewsSize:I

    .line 86
    iput v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mHotTitleIndex:I

    .line 87
    iput v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mNewTitleIndex:I

    .line 88
    iput v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mSelection:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    .line 90
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 154
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 169
    if-nez p2, :cond_0

    .line 170
    const/4 v4, 0x0

    .line 171
    .local v4, "root":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->getItemViewType(I)I

    move-result v7

    .line 172
    .local v7, "type":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 173
    iget-object v8, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0300c2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 177
    :goto_0
    move-object p2, v4

    .line 178
    new-instance v8, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

    invoke-direct {v8, p0, v4, v7}, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;-><init>(Lcom/tudou/detail/adapter/VideoCommentAdapter;Landroid/view/View;I)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 181
    .end local v4    # "root":Landroid/view/View;
    .end local v7    # "type":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

    .line 182
    .local v2, "holder":Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;
    invoke-virtual {p0, p1}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->getItemViewType(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->clear(I)V

    .line 183
    iget-object v8, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;

    .line 184
    .local v0, "comment":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    iput-object v0, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    .line 185
    iget-object v8, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->type:Ljava/lang/String;

    const-string v9, "title"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 186
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->title:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->content:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :goto_1
    return-object p2

    .line 175
    .end local v0    # "comment":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    .end local v2    # "holder":Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;
    .restart local v4    # "root":Landroid/view/View;
    .restart local v7    # "type":I
    :cond_1
    iget-object v8, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0300c3

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 188
    .end local v4    # "root":Landroid/view/View;
    .end local v7    # "type":I
    .restart local v0    # "comment":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    .restart local v2    # "holder":Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;
    :cond_2
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->userName:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->nickName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->date:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->content:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->content:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digNum:Landroid/widget/TextView;

    iget v9, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->agree:I

    invoke-static {v9}, Lcom/youku/util/Util;->newFormatNumber(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v9, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digNum:Landroid/widget/TextView;

    iget v8, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->agree:I

    if-lez v8, :cond_5

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v9, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->divider:Landroid/view/View;

    iget v8, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mHotsSize:I

    if-eq p1, v8, :cond_3

    iget v8, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mHotsSize:I

    iget v10, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mNewsSize:I

    add-int/2addr v8, v10

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_6

    :cond_3
    const/16 v8, 0x8

    :goto_3
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v9, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->vUserMark:Landroid/widget/ImageView;

    iget-boolean v8, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->isVUser:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget v8, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->status:I

    packed-switch v8, :pswitch_data_0

    .line 209
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->from:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :goto_5
    iget-object v9, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digIcon:Landroid/widget/ImageView;

    iget-boolean v8, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->mDiged:Z

    if-eqz v8, :cond_8

    const v8, 0x7f0201a5

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->userPic:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 215
    .local v3, "lastPic":Ljava/lang/String;
    iget-object v6, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->userPic:Landroid/widget/ImageView;

    .line 216
    .local v6, "tUserPic":Landroid/widget/ImageView;
    iget-object v8, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userPic:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 217
    iget-object v8, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userPic:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 219
    iget-object v8, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v9, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userPic:Ljava/lang/String;

    new-instance v10, Lcom/tudou/detail/adapter/VideoCommentAdapter$1;

    invoke-direct {v10, p0, v6}, Lcom/tudou/detail/adapter/VideoCommentAdapter$1;-><init>(Lcom/tudou/detail/adapter/VideoCommentAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 231
    :cond_4
    iget-object v5, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->mPic:Landroid/widget/ImageView;

    .line 232
    .local v5, "tPic":Landroid/widget/ImageView;
    iget-object v8, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->picUrl:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 233
    sget-object v8, Lcom/tudou/detail/adapter/VideoCommentAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getView userName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->nickName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " picUrl = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->picUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v8, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->picUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 235
    iget-object v8, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v9, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->picUrl:Ljava/lang/String;

    new-instance v10, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;

    invoke-direct {v10, p0, v5, v0, v2}, Lcom/tudou/detail/adapter/VideoCommentAdapter$2;-><init>(Lcom/tudou/detail/adapter/VideoCommentAdapter;Landroid/widget/ImageView;Lcom/tudou/detail/vo/CommentsInfo$Comment;Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;)V

    invoke-virtual {v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 275
    :goto_7
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->userPic:Landroid/widget/ImageView;

    new-instance v9, Lcom/tudou/detail/adapter/VideoCommentAdapter$3;

    invoke-direct {v9, p0, v0}, Lcom/tudou/detail/adapter/VideoCommentAdapter$3;-><init>(Lcom/tudou/detail/adapter/VideoCommentAdapter;Lcom/tudou/detail/vo/CommentsInfo$Comment;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    move-object v1, v2

    .line 292
    .local v1, "finalHolder":Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digIcon:Landroid/widget/ImageView;

    new-instance v9, Lcom/tudou/detail/adapter/VideoCommentAdapter$4;

    invoke-direct {v9, p0, p1}, Lcom/tudou/detail/adapter/VideoCommentAdapter$4;-><init>(Lcom/tudou/detail/adapter/VideoCommentAdapter;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 192
    .end local v1    # "finalHolder":Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;
    .end local v3    # "lastPic":Ljava/lang/String;
    .end local v5    # "tPic":Landroid/widget/ImageView;
    .end local v6    # "tUserPic":Landroid/widget/ImageView;
    :cond_5
    const/16 v8, 0x8

    goto/16 :goto_2

    .line 193
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 194
    :cond_7
    const/16 v8, 0x8

    goto/16 :goto_4

    .line 197
    :pswitch_0
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->from:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 200
    :pswitch_1
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->from:Landroid/widget/ImageView;

    const v9, 0x7f020269

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 203
    :pswitch_2
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->from:Landroid/widget/ImageView;

    const v9, 0x7f02026a

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 206
    :pswitch_3
    iget-object v8, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->from:Landroid/widget/ImageView;

    const v9, 0x7f020268

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 212
    :cond_8
    const v8, 0x7f0201a6

    goto/16 :goto_6

    .line 272
    .restart local v3    # "lastPic":Ljava/lang/String;
    .restart local v5    # "tPic":Landroid/widget/ImageView;
    .restart local v6    # "tUserPic":Landroid/widget/ImageView;
    :cond_9
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    iget v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mHotTitleIndex:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mNewTitleIndex:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCommentDigged(II)V
    .locals 4
    .param p1, "commentId"    # I
    .param p2, "code"    # I

    .prologue
    .line 93
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;

    .line 95
    .local v0, "c":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    const-string v2, "title"

    iget-object v3, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    iget v2, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->commentId:I

    if-ne p1, v2, :cond_0

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->mDiged:Z

    .line 98
    if-nez p2, :cond_0

    .line 99
    iget v2, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->agree:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->agree:I

    goto :goto_0

    .line 105
    .end local v0    # "c":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setData(Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V
    .locals 4
    .param p1, "news"    # Lcom/tudou/detail/vo/CommentsInfo;
    .param p2, "hots"    # Lcom/tudou/detail/vo/CommentsInfo;

    .prologue
    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    .line 109
    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p2}, Lcom/tudou/detail/vo/CommentsInfo;->getCount()I

    move-result v2

    iput v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mHotsSize:I

    .line 111
    iget v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mHotsSize:I

    if-lez v2, :cond_0

    .line 112
    new-instance v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;

    invoke-direct {v1}, Lcom/tudou/detail/vo/CommentsInfo$Comment;-><init>()V

    .line 113
    .local v1, "title":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    const-string v2, "title"

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->type:Ljava/lang/String;

    .line 114
    const-string v2, "\u70ed\u95e8\u8bc4\u8bba"

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->content:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mHotTitleIndex:I

    .line 116
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mHotsSize:I

    if-ge v0, v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/tudou/detail/vo/CommentsInfo;->get(I)Lcom/tudou/detail/vo/CommentsInfo$Comment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    .end local v1    # "title":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    :cond_0
    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/tudou/detail/vo/CommentsInfo;->getCount()I

    move-result v2

    iput v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mNewsSize:I

    .line 124
    iget v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mNewsSize:I

    if-lez v2, :cond_1

    .line 125
    new-instance v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;

    invoke-direct {v1}, Lcom/tudou/detail/vo/CommentsInfo$Comment;-><init>()V

    .line 126
    .restart local v1    # "title":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    const-string v2, "title"

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->type:Ljava/lang/String;

    .line 127
    const-string v2, "\u6700\u65b0\u8bc4\u8bba"

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->content:Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mNewTitleIndex:I

    .line 129
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mNewsSize:I

    if-ge v0, v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mVideoComment:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/tudou/detail/vo/CommentsInfo;->get(I)Lcom/tudou/detail/vo/CommentsInfo$Comment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "i":I
    .end local v1    # "title":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 306
    iput p1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mSelection:I

    .line 307
    return-void
.end method
