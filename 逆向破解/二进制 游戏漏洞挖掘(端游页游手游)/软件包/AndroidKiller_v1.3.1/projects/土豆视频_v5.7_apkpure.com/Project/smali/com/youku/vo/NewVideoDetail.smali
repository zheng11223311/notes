.class public Lcom/youku/vo/NewVideoDetail;
.super Ljava/lang/Object;
.source "NewVideoDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/NewVideoDetail$Detail;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x23d398a4d3bb1d6cL


# instance fields
.field public detail:Lcom/youku/vo/NewVideoDetail$Detail;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/youku/vo/NewVideoDetail$Detail;

    invoke-direct {v0, p0}, Lcom/youku/vo/NewVideoDetail$Detail;-><init>(Lcom/youku/vo/NewVideoDetail;)V

    iput-object v0, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    .line 18
    return-void
.end method


# virtual methods
.method public attentionEquals(Lcom/youku/vo/NewVideoDetail;)Z
    .locals 4
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "equals":Z
    if-eqz p1, :cond_0

    .line 152
    const-string v1, "album"

    iget-object v2, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getActorCount()I
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "count":I
    iget-object v1, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->actors:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->actors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 136
    :cond_0
    return v0
.end method

.method public getActorNames()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->actors:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->actors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    .line 143
    .local v0, "a":Lcom/youku/vo/NewVideoDetail$Detail$Actor;
    iget-object v3, v0, Lcom/youku/vo/NewVideoDetail$Detail$Actor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v0    # "a":Lcom/youku/vo/NewVideoDetail$Detail$Actor;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "id":Ljava/lang/String;
    invoke-static {p0}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    .line 179
    .local v1, "type":Lcom/tudou/android/Youku$VideoType;
    if-eqz v1, :cond_0

    .line 180
    sget-object v2, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v2, v1, :cond_1

    .line 181
    iget-object v2, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v2, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :cond_1
    sget-object v2, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v2, v1, :cond_2

    .line 183
    iget-object v2, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v2, Lcom/youku/vo/NewVideoDetail$Detail;->plid:Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_2
    sget-object v2, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    if-ne v2, v1, :cond_0

    .line 185
    iget-object v2, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v2, Lcom/youku/vo/NewVideoDetail$Detail;->iid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserPic()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "pic":Ljava/lang/String;
    invoke-static {p0}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    .line 168
    .local v1, "type":Lcom/tudou/android/Youku$VideoType;
    if-eqz v1, :cond_1

    .line 169
    sget-object v2, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    if-ne v2, v1, :cond_1

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v2, Lcom/youku/vo/NewVideoDetail$Detail;->channel_pic:Ljava/lang/String;

    .line 173
    :cond_1
    return-object v0
.end method
