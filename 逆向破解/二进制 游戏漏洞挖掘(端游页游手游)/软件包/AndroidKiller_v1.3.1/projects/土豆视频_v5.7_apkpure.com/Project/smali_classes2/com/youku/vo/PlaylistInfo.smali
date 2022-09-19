.class public Lcom/youku/vo/PlaylistInfo;
.super Ljava/lang/Object;
.source "PlaylistInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/PlaylistInfo$PlaylistData;
    }
.end annotation


# instance fields
.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/PlaylistInfo$PlaylistData;",
            ">;"
        }
    .end annotation
.end field

.field public error:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method
