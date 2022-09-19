.class public Lcom/youku/vo/GuideTab;
.super Ljava/lang/Object;
.source "GuideTab.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public avatar:Ljava/lang/String;

.field public isSubed:Z

.field public podcast_user_id:Ljava/lang/String;

.field public podcast_user_nick:Ljava/lang/String;

.field public v_user:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 27
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/youku/vo/GuideTab;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    check-cast p1, Lcom/youku/vo/GuideTab;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 34
    :goto_0
    return v0

    .line 31
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 34
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
