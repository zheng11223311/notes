.class public Lcom/youku/vo/SearchDirectDaoShowset;
.super Ljava/lang/Object;
.source "SearchDirectDaoShowset.java"


# instance fields
.field public aid:Ljava/lang/String;

.field public iid:Ljava/lang/String;

.field public isTrailer:Z

.field public pay_type:Ljava/lang/String;

.field public play_mode:Ljava/lang/String;

.field public show_seq:Ljava/lang/String;

.field public show_stage:Ljava/lang/String;

.field public stripe:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/SearchDirectDaoShowset;->isTrailer:Z

    .line 17
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/vo/SearchDirectDaoShowset;->pay_type:Ljava/lang/String;

    return-void
.end method
