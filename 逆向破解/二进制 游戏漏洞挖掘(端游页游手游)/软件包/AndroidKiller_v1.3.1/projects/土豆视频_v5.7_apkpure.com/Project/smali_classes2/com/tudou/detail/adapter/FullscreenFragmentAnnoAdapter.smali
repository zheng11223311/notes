.class public Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;
.super Landroid/widget/BaseAdapter;
.source "FullscreenFragmentAnnoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnnos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "anno":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/Annotation;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    sget-object v0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FullscreenFragmentAnnoAdapter cons"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p2, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->mAnnos:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private parseUrl(Ljava/lang/String;)Z
    .locals 14
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v11, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseUrl s= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :try_start_0
    const-string v0, ""

    .line 97
    .local v0, "aid":Ljava/lang/String;
    const-string v6, ""

    .line 98
    .local v6, "plid":Ljava/lang/String;
    const-string v10, ""

    .line 99
    .local v10, "vid":Ljava/lang/String;
    const-string v11, "albumplay"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 100
    .local v1, "albumIndex":I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_0

    .line 101
    const/4 v4, -0x1

    .line 102
    .local v4, "end":I
    const/4 v7, -0x1

    .line 103
    .local v7, "start":I
    const-string v11, "/"

    invoke-virtual {p1, v11, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 104
    const-string v11, "/"

    const-string v12, "albumplay"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 105
    const/4 v11, -0x1

    if-eq v4, v11, :cond_8

    .line 106
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 107
    move v7, v4

    .line 108
    const-string v11, ".html"

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 109
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 110
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "---"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    .end local v4    # "end":I
    .end local v7    # "start":I
    :cond_0
    :goto_0
    const-string v11, "listplay"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 119
    .local v5, "plIndex":I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_1

    .line 120
    const/4 v4, -0x1

    .line 121
    .restart local v4    # "end":I
    const/4 v7, -0x1

    .line 122
    .restart local v7    # "start":I
    const-string v11, "/"

    invoke-virtual {p1, v11, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 123
    const-string v11, "/"

    const-string v12, "listplay"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 124
    const/4 v11, -0x1

    if-eq v4, v11, :cond_9

    .line 125
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 126
    move v7, v4

    .line 127
    const-string v11, ".html"

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 128
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 129
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "---"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    .end local v4    # "end":I
    .end local v7    # "start":I
    :cond_1
    :goto_1
    const-string v11, "view"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 138
    .local v9, "ugcIndex":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_3

    .line 139
    const/4 v4, -0x1

    .line 140
    .restart local v4    # "end":I
    const/4 v7, -0x1

    .line 141
    .restart local v7    # "start":I
    const-string v11, "/"

    invoke-virtual {p1, v11, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 142
    const-string v11, ".html"

    const-string v12, "view"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v9

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 143
    const/4 v11, -0x1

    if-eq v4, v11, :cond_a

    .line 144
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 151
    :cond_2
    :goto_2
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    .end local v4    # "end":I
    .end local v7    # "start":I
    :cond_3
    sget-object v11, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "aid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", plid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", vid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 156
    :cond_4
    sget-object v8, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    .line 157
    .local v8, "type":Lcom/tudou/android/Youku$Type;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 158
    sget-object v8, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    .line 160
    :cond_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v2, "b":Landroid/os/Bundle;
    const-string v11, "video_id"

    sget-object v12, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    if-ne v8, v12, :cond_6

    move-object v10, v0

    .end local v10    # "vid":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v11, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    if-ne v8, v11, :cond_7

    .line 163
    const-string v11, "intent.extra.album.id"

    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_7
    const-string v11, "type"

    invoke-virtual {v2, v11, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 166
    const-string v11, "playlistCode"

    invoke-virtual {v2, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v11, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v8, v2}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Lcom/tudou/android/Youku$Type;Landroid/os/Bundle;)V

    .line 168
    const/4 v11, 0x1

    .line 173
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "albumIndex":I
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v5    # "plIndex":I
    .end local v6    # "plid":Ljava/lang/String;
    .end local v8    # "type":Lcom/tudou/android/Youku$Type;
    .end local v9    # "ugcIndex":I
    :goto_3
    return v11

    .line 112
    .restart local v0    # "aid":Ljava/lang/String;
    .restart local v1    # "albumIndex":I
    .restart local v4    # "end":I
    .restart local v6    # "plid":Ljava/lang/String;
    .restart local v7    # "start":I
    .restart local v10    # "vid":Ljava/lang/String;
    :cond_8
    const-string v11, ".html"

    const-string v12, "albumplay"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 113
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "albumIndex":I
    .end local v4    # "end":I
    .end local v6    # "plid":Ljava/lang/String;
    .end local v7    # "start":I
    .end local v10    # "vid":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 173
    .local v3, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_3

    .line 131
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "aid":Ljava/lang/String;
    .restart local v1    # "albumIndex":I
    .restart local v4    # "end":I
    .restart local v5    # "plIndex":I
    .restart local v6    # "plid":Ljava/lang/String;
    .restart local v7    # "start":I
    .restart local v10    # "vid":Ljava/lang/String;
    :cond_9
    const-string v11, ".html"

    const-string v12, "listplay"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 132
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 133
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    .restart local v9    # "ugcIndex":I
    :cond_a
    const-string v11, "/"

    const-string v12, "view"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v9

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 147
    const/4 v11, -0x1

    if-eq v4, v11, :cond_2

    .line 148
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto/16 :goto_2

    .line 170
    .end local v4    # "end":I
    .end local v7    # "start":I
    :cond_b
    const/4 v11, 0x0

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->getGoodsCount()I

    move-result v0

    return v0
.end method

.method public getGoodsCount()I
    .locals 3

    .prologue
    .line 56
    sget-object v1, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemCount count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->mAnnos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->mAnnos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->mAnnos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->mAnnos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    return v0

    .line 56
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    if-nez p2, :cond_0

    .line 63
    iget-object v3, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300cd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, "root":Landroid/view/View;
    move-object p2, v2

    .line 65
    new-instance v3, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;

    invoke-direct {v3, p0, p2}, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;-><init>(Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    .end local v2    # "root":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;

    .line 69
    .local v1, "holder":Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;
    iget-object v3, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->mAnnos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/Annotation;

    .line 70
    .local v0, "a":Lcom/tudou/detail/vo/Annotation;
    iput-object v0, v1, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;->anno:Lcom/tudou/detail/vo/Annotation;

    .line 71
    if-eqz v0, :cond_1

    .line 72
    iget-object v3, v1, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;->title:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/tudou/detail/vo/Annotation;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, v1, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;->content:Landroid/view/View;

    new-instance v4, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$1;-><init>(Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_1
    return-object p2
.end method
