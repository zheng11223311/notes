.class public Lcom/sea_monster/common/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# static fields
.field public static final EXIST_SEPARATOR:I = 0x1

.field public static final NON_SEPARATOR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToParcelable([BLjava/lang/Class;)Landroid/os/Parcelable;
    .locals 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 193
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 194
    :cond_0
    const/4 v1, 0x0

    .line 203
    :goto_0
    return-object v1

    .line 196
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "in":Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v0, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 198
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 201
    invoke-static {v0, p1}, Lcom/sea_monster/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v1

    .line 202
    .local v1, "t":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public static bytesToParcelableList([BLjava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 215
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 216
    :cond_0
    const/4 v1, 0x0

    .line 225
    :goto_0
    return-object v1

    .line 218
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    .local v0, "in":Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v0, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 220
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 223
    invoke-static {v0, p1}, Lcom/sea_monster/common/ParcelUtils;->readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 224
    .local v1, "t":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public static parcelableListToByte(Ljava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Landroid/os/Parcelable;>;"
    if-nez p0, :cond_0

    .line 230
    const/4 v1, 0x0

    .line 234
    :goto_0
    return-object v1

    .line 231
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-static {v0, p0}, Lcom/sea_monster/common/ParcelUtils;->writeListToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static parcelableToByte(Landroid/os/Parcelable;)[B
    .locals 2
    .param p0, "model"    # Landroid/os/Parcelable;

    .prologue
    .line 207
    if-nez p0, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 211
    :goto_0
    return-object v1

    .line 209
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 210
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-static {v0, p0}, Lcom/sea_monster/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .local v0, "flag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 106
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readDoubleFromParcel(Landroid/os/Parcel;)Ljava/lang/Double;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .local v0, "flag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readFloatFromParcel(Landroid/os/Parcel;)Ljava/lang/Float;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "flag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .local v0, "flag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, "flag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .local v0, "flag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .local v0, "flag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readLongFromParcel(Landroid/os/Parcel;)Ljava/lang/Long;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, "flag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, "flag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 142
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeListToParcel(Landroid/os/Parcel;Ljava/util/List;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "collection":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V
    .locals 2
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "model":Landroid/os/Parcelable;, "TT;"
    const/4 v1, 0x0

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/lang/Double;)V
    .locals 2
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "obj"    # Ljava/lang/Double;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/lang/Float;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "obj"    # Ljava/lang/Float;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "obj"    # Ljava/lang/Integer;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/lang/Long;)V
    .locals 2
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "obj"    # Ljava/lang/Long;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "obj"    # Ljava/lang/String;

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/util/Date;)V
    .locals 2
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "obj"    # Ljava/util/Date;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/util/List;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/List",
            "<*>;>(",
            "Landroid/os/Parcel;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "model":Ljava/util/List;, "TT;"
    if-eqz p1, :cond_0

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "obj"    # Ljava/util/Map;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
