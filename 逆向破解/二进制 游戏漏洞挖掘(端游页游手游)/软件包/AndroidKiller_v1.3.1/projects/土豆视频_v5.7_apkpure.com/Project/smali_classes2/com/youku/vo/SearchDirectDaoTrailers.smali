.class public Lcom/youku/vo/SearchDirectDaoTrailers;
.super Ljava/lang/Object;
.source "SearchDirectDaoTrailers.java"


# instance fields
.field public aid:Ljava/lang/String;

.field public is_trailer:Ljava/lang/String;

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

.field public reversed:I

.field public site_id:I

.field public site_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
