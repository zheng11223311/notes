.class public Lcom/youku/adapter/CacheFloderAdapter;
.super Landroid/widget/BaseAdapter;
.source "CacheFloderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private count:I

.field private downloadedList_show:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isEdit:Z

.field private positionList:Lcom/youku/util/DeleteCachingItemList;

.field private showId:Ljava/lang/String;

.field private size:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput v0, p0, Lcom/youku/adapter/CacheFloderAdapter;->size:I

    .line 35
    iput v0, p0, Lcom/youku/adapter/CacheFloderAdapter;->count:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter;->downloadedList_show:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/youku/adapter/CacheFloderAdapter;->activity:Landroid/app/Activity;

    .line 46
    return-void
.end method

.method private initViewHolder(Landroid/view/View;Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)V
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "viewHolder"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;

    .prologue
    .line 217
    const v0, 0x7f0c06db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$602(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f0c06dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$202(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 221
    invoke-static {p2}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$200(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 222
    const v0, 0x7f0c06de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$702(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 224
    const v0, 0x7f0c06df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$402(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 226
    const v0, 0x7f0c06da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$102(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 228
    const v0, 0x7f0c06cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p2, v0}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$002(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 230
    const v0, 0x7f0c06dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$502(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 232
    const v0, 0x7f0c06d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$302(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 234
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method private setView(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;I)V
    .locals 6
    .param p1, "viewHolder"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p3, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 100
    if-nez p2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-boolean v1, p0, Lcom/youku/adapter/CacheFloderAdapter;->isEdit:Z

    if-eqz v1, :cond_4

    .line 104
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$000(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/youku/adapter/CacheFloderAdapter;->positionList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$100(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0207fe

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :goto_1
    iget v1, p2, Lcom/tudou/service/download/DownloadInfo;->verCode:I

    const/16 v2, 0x39

    if-ge v1, v2, :cond_7

    .line 128
    iget-object v1, p2, Lcom/tudou/service/download/DownloadInfo;->cats:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "\u7efc\u827a"

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->cats:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u7eaa\u5f55\u7247"

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->cats:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 130
    :cond_1
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$200(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_2
    iget-boolean v1, p2, Lcom/tudou/service/download/DownloadInfo;->isplay:Z

    if-eqz v1, :cond_8

    .line 142
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$400(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u5df2\u770b\u5b8c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_2
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CacheFloderAdapter;->showDeIcon(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    .line 162
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "img":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 164
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 109
    .end local v0    # "img":Ljava/io/File;
    :cond_3
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$100(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0207ff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 113
    :cond_4
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$000(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 132
    :cond_5
    iget v1, p2, Lcom/tudou/service/download/DownloadInfo;->show_videostage:I

    if-nez v1, :cond_6

    .line 133
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$200(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u96c6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 135
    :cond_6
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$200(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/tudou/service/download/DownloadInfo;->show_videostage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u96c6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 139
    :cond_7
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$200(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 145
    :cond_8
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v1

    if-nez v1, :cond_9

    .line 146
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$400(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p2, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 149
    :cond_9
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSeconds()I

    move-result v2

    add-int/lit8 v2, v2, -0x3c

    if-le v1, v2, :cond_a

    .line 150
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$400(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u5df2\u770b\u5b8c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 153
    :cond_a
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v1

    if-lez v1, :cond_2

    .line 154
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$400(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c2\u770b\u81f3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 167
    .restart local v0    # "img":Ljava/io/File;
    :cond_b
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020371

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private showDeIcon(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 1
    .param p1, "viewHolder"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 173
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CacheFloderAdapter;->showHighEndIcon(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CacheFloderAdapter;->showLowEndIcon(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_0
.end method

.method private showHighEndIcon(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 6
    .param p1, "viewHolder"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 187
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const-string v0, "tudou"

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 190
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$700(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6807\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 193
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$700(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ad8\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-eq v4, v0, :cond_3

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-ne v5, v0, :cond_0

    .line 197
    :cond_3
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$700(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d85\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_4
    const-string v0, "youku"

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v0

    if-eq v2, v0, :cond_5

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v0

    if-eq v3, v0, :cond_5

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v0

    if-ne v5, v0, :cond_6

    .line 203
    :cond_5
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$700(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6807\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 205
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v0

    if-ne v4, v0, :cond_8

    .line 206
    :cond_7
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$700(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ad8\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 208
    :cond_8
    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 209
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$700(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d85\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showLowEndIcon(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 4
    .param p1, "viewHolder"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 181
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-static {p1}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->access$700(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-static {v1}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter;->downloadedList_show:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 66
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
    .line 71
    iget-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "viewHolder":Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "viewHolder":Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    check-cast v0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;

    .line 90
    .restart local v0    # "viewHolder":Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    :goto_0
    iget-object v1, p0, Lcom/youku/adapter/CacheFloderAdapter;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0, v0, v1, p1}, Lcom/youku/adapter/CacheFloderAdapter;->setView(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;I)V

    .line 91
    return-object p2

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/youku/adapter/CacheFloderAdapter;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030162

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    new-instance v0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;

    .end local v0    # "viewHolder":Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;-><init>(Lcom/youku/adapter/CacheFloderAdapter;)V

    .line 88
    .restart local v0    # "viewHolder":Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    invoke-direct {p0, p2, v0}, Lcom/youku/adapter/CacheFloderAdapter;->initViewHolder(Landroid/view/View;Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "downloadedList_show":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter;->downloadedList_show:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method public setEdit(Z)V
    .locals 0
    .param p1, "isEdit"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/youku/adapter/CacheFloderAdapter;->isEdit:Z

    .line 50
    return-void
.end method

.method public setPositionList(Lcom/youku/util/DeleteCachingItemList;)V
    .locals 0
    .param p1, "deleteList"    # Lcom/youku/util/DeleteCachingItemList;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/youku/adapter/CacheFloderAdapter;->positionList:Lcom/youku/util/DeleteCachingItemList;

    .line 59
    return-void
.end method
