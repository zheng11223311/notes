.class public Lcom/youku/vo/MyVideoResult;
.super Ljava/lang/Object;
.source "MyVideoResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/MyVideoResult$Result;
    }
.end annotation


# instance fields
.field public albums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/MyVideoResult$Result;",
            ">;"
        }
    .end annotation
.end field

.field public code:I

.field public error_code_api:I

.field public page:I

.field public page_Size:I

.field public status_api:Ljava/lang/String;

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method
