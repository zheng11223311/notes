.class public Lcom/youku/vo/SearchDirectDaoSources;
.super Ljava/lang/Object;
.source "SearchDirectDaoSources.java"


# instance fields
.field public aid:Ljava/lang/String;

.field public history:I

.field public is_tudou:I

.field public item_count:I

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowset;",
            ">;"
        }
    .end annotation
.end field

.field public pay_type:Ljava/lang/String;

.field public play_mode:Ljava/lang/String;

.field public reversed:I

.field public site_drawable:I

.field public site_id:I

.field public site_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/vo/SearchDirectDaoSources;->pay_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setItemPlayMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    iget-object v0, p0, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, p0, Lcom/youku/vo/SearchDirectDaoSources;->play_mode:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SearchDirectDaoShowset;->play_mode:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, p0, Lcom/youku/vo/SearchDirectDaoSources;->pay_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SearchDirectDaoShowset;->pay_type:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, p0, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SearchDirectDaoShowset;->aid:Ljava/lang/String;

    .line 25
    return-void
.end method
