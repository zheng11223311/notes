.class public Lcom/youku/vo/SearchDirectDao;
.super Ljava/lang/Object;
.source "SearchDirectDao.java"


# instance fields
.field public correction:Lcom/youku/vo/SearchCorrection;

.field public pg:I

.field public pz:I

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
