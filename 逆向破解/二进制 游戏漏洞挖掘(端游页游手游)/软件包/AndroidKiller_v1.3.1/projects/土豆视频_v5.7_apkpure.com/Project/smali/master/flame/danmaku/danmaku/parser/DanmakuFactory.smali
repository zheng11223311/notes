.class public Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;
.super Ljava/lang/Object;
.source "DanmakuFactory.java"


# static fields
.field public static final BILI_PLAYER_HEIGHT:F = 438.0f

.field public static final BILI_PLAYER_WIDTH:F = 682.0f

.field public static final COMMON_DANMAKU_DURATION:J = 0xed8L

.field public static final DANMAKU_MEDIUM_TEXTSIZE:I = 0x19

.field public static final MAX_DANMAKU_DURATION_HIGH_DENSITY:J = 0x2328L

.field public static final MIN_DANMAKU_DURATION:J = 0xfa0L

.field public static final OLD_BILI_PLAYER_HEIGHT:F = 385.0f

.field public static final OLD_BILI_PLAYER_WIDTH:F = 539.0f


# instance fields
.field public CURRENT_DISP_HEIGHT:I

.field private CURRENT_DISP_SIZE_FACTOR:F

.field public CURRENT_DISP_WIDTH:I

.field public MAX_DANMAKU_DURATION:J

.field public MAX_Duration_Fix_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

.field public MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

.field public MAX_Duration_Special_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

.field public REAL_DANMAKU_DURATION:J

.field private sLastConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field public sLastDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

.field public sSpecialDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_WIDTH:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_HEIGHT:I

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_SIZE_FACTOR:F

    .line 55
    const-wide/16 v0, 0xed8

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    .line 57
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    .line 65
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sSpecialDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 33
    return-void
.end method

.method public static fillLinePathData(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;[[FFF)V
    .locals 5
    .param p0, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p1, "points"    # [[F
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F

    .prologue
    const/4 v4, 0x0

    .line 259
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 260
    aget-object v1, p1, v4

    array-length v1, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 267
    .end local p0    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_0
    :goto_0
    return-void

    .line 262
    .restart local p0    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_2

    .line 266
    check-cast p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;

    .end local p0    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->setLinePathData([[F)V

    goto :goto_0

    .line 263
    .restart local p0    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_2
    aget-object v1, p1, v0

    aget v2, v1, v4

    mul-float/2addr v2, p2

    aput v2, v1, v4

    .line 264
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget v3, v1, v2

    mul-float/2addr v3, p3

    aput v3, v1, v2

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateSpecialDanmakusDate(FF)V
    .locals 22
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sSpecialDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-object/from16 v20, v0

    .line 197
    .local v20, "list":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    invoke-interface/range {v20 .. v20}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v16

    .line 198
    .local v16, "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 214
    return-void

    .line 199
    :cond_1
    invoke-interface/range {v16 .. v16}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v5

    check-cast v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;

    .line 200
    .local v5, "speicalDanmaku":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;
    iget v6, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginX:F

    iget v7, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginY:F

    .line 201
    iget v8, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endX:F

    iget v9, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endY:F

    iget-wide v10, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    .line 202
    iget-wide v12, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationStartDelay:J

    move-object/from16 v4, p0

    move/from16 v14, p1

    move/from16 v15, p2

    .line 200
    invoke-virtual/range {v4 .. v15}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->fillTranslationData(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;FFFFJJFF)V

    .line 203
    iget-object v0, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    move-object/from16 v19, v0

    .line 204
    .local v19, "linePaths":[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    array-length v4, v0

    if-lez v4, :cond_0

    .line 205
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    .line 206
    .local v18, "length":I
    add-int/lit8 v4, v18, 0x1

    const/4 v6, 0x2

    filled-new-array {v4, v6}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[F

    .line 207
    .local v21, "points":[[F
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 211
    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v5, v0, v1, v2}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->fillLinePathData(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;[[FFF)V

    goto :goto_0

    .line 208
    :cond_2
    aget-object v4, v19, v17

    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->getBeginPoint()[F

    move-result-object v4

    aput-object v4, v21, v17

    .line 209
    add-int/lit8 v4, v17, 0x1

    aget-object v6, v19, v17

    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->getEndPoint()[F

    move-result-object v6

    aput-object v6, v21, v4

    .line 207
    add-int/lit8 v17, v17, 0x1

    goto :goto_1
.end method

.method private updateSpecicalDanmakuDuration(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 4
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 286
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Special_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Special_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 287
    :cond_0
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Special_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 288
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->updateMaxDanmakuDuration()V

    .line 290
    :cond_1
    return-void
.end method


# virtual methods
.method public createDanmaku(I)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sLastConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->createDanmaku(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    return-object v0
.end method

.method public createDanmaku(IFFFF)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 8
    .param p1, "type"    # I
    .param p2, "viewportWidth"    # F
    .param p3, "viewportHeight"    # F
    .param p4, "viewportSizeFactor"    # F
    .param p5, "scrollSpeedFactor"    # F

    .prologue
    const/4 v5, 0x0

    .line 128
    invoke-virtual {p0, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->updateViewportState(FFF)Z

    move-result v3

    .line 129
    .local v3, "sizeChanged":Z
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    if-nez v4, :cond_4

    .line 130
    new-instance v4, Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v6, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    invoke-direct {v4, v6, v7}, Lmaster/flame/danmaku/danmaku/model/Duration;-><init>(J)V

    iput-object v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 131
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    invoke-virtual {v4, p5}, Lmaster/flame/danmaku/danmaku/model/Duration;->setFactor(F)V

    .line 136
    :cond_0
    :goto_0
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    if-nez v4, :cond_1

    .line 137
    new-instance v4, Lmaster/flame/danmaku/danmaku/model/Duration;

    const-wide/16 v6, 0xed8

    invoke-direct {v4, v6, v7}, Lmaster/flame/danmaku/danmaku/model/Duration;-><init>(J)V

    iput-object v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 140
    :cond_1
    if-eqz v3, :cond_3

    cmpl-float v4, p2, v5

    if-lez v4, :cond_3

    .line 141
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->updateMaxDanmakuDuration()V

    .line 142
    const/high16 v1, 0x3f800000    # 1.0f

    .line 143
    .local v1, "scaleX":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 144
    .local v2, "scaleY":F
    iget v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_WIDTH:I

    if-lez v4, :cond_2

    iget v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_HEIGHT:I

    if-lez v4, :cond_2

    .line 145
    iget v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_WIDTH:I

    int-to-float v4, v4

    div-float v1, p2, v4

    .line 146
    iget v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_HEIGHT:I

    int-to-float v4, v4

    div-float v2, p3, v4

    .line 148
    :cond_2
    cmpl-float v4, p3, v5

    if-lez v4, :cond_3

    .line 149
    invoke-direct {p0, v1, v2}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->updateSpecialDanmakusDate(FF)V

    .line 153
    .end local v1    # "scaleX":F
    .end local v2    # "scaleY":F
    :cond_3
    const/4 v0, 0x0

    .line 154
    .local v0, "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_1
    :pswitch_0
    return-object v0

    .line 132
    .end local v0    # "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_4
    if-eqz v3, :cond_0

    .line 133
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v6, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    invoke-virtual {v4, v6, v7}, Lmaster/flame/danmaku/danmaku/model/Duration;->setValue(J)V

    goto :goto_0

    .line 156
    .restart local v0    # "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :pswitch_1
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;

    .end local v0    # "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    invoke-direct {v0, v4}, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;-><init>(Lmaster/flame/danmaku/danmaku/model/Duration;)V

    .line 157
    .restart local v0    # "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    goto :goto_1

    .line 159
    :pswitch_2
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/FBDanmaku;

    .end local v0    # "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    invoke-direct {v0, v4}, Lmaster/flame/danmaku/danmaku/model/FBDanmaku;-><init>(Lmaster/flame/danmaku/danmaku/model/Duration;)V

    .line 160
    .restart local v0    # "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    goto :goto_1

    .line 162
    :pswitch_3
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;

    .end local v0    # "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    invoke-direct {v0, v4}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;-><init>(Lmaster/flame/danmaku/danmaku/model/Duration;)V

    .line 163
    .restart local v0    # "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    goto :goto_1

    .line 165
    :pswitch_4
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/L2RDanmaku;

    .end local v0    # "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    invoke-direct {v0, v4}, Lmaster/flame/danmaku/danmaku/model/L2RDanmaku;-><init>(Lmaster/flame/danmaku/danmaku/model/Duration;)V

    .line 166
    .restart local v0    # "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    goto :goto_1

    .line 168
    :pswitch_5
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;

    .end local v0    # "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;-><init>()V

    .line 169
    .restart local v0    # "instance":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sSpecialDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v4, v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    goto :goto_1

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public createDanmaku(IIIFF)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 6
    .param p1, "type"    # I
    .param p2, "viewportWidth"    # I
    .param p3, "viewportHeight"    # I
    .param p4, "viewportScale"    # F
    .param p5, "scrollSpeedFactor"    # F

    .prologue
    .line 115
    int-to-float v2, p2

    int-to-float v3, p3

    move-object v0, p0

    move v1, p1

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->createDanmaku(IFFFF)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    return-object v0
.end method

.method public createDanmaku(ILmaster/flame/danmaku/danmaku/model/IDisplayer;FF)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 6
    .param p1, "type"    # I
    .param p2, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p3, "viewportScale"    # F
    .param p4, "scrollSpeedFactor"    # F

    .prologue
    .line 99
    if-nez p2, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :cond_0
    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sLastDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .line 102
    invoke-interface {p2}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v2

    invoke-interface {p2}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->createDanmaku(IIIFF)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    goto :goto_0
.end method

.method public createDanmaku(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 6
    .param p1, "type"    # I
    .param p2, "context"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 91
    if-nez p2, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    .line 93
    :cond_0
    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sLastConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 94
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sLastDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .line 95
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sLastDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v2

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sLastDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v3

    iget v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_SIZE_FACTOR:F

    iget v5, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scrollSpeedFactor:F

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->createDanmaku(IIIFF)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    goto :goto_0
.end method

.method public fillAlphaData(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IIJ)V
    .locals 2
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "beginAlpha"    # I
    .param p3, "endAlpha"    # I
    .param p4, "alphaDuraion"    # J

    .prologue
    .line 279
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 283
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 281
    check-cast v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;

    invoke-virtual {v0, p2, p3, p4, p5}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->setAlphaData(IIJ)V

    .line 282
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->updateSpecicalDanmakuDuration(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    goto :goto_0
.end method

.method public fillTranslationData(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;FFFFJJFF)V
    .locals 10
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "beginX"    # F
    .param p3, "beginY"    # F
    .param p4, "endX"    # F
    .param p5, "endY"    # F
    .param p6, "translationDuration"    # J
    .param p8, "translationStartDelay"    # J
    .param p10, "scaleX"    # F
    .param p11, "scaleY"    # F

    .prologue
    .line 250
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 255
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 252
    check-cast v1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;

    mul-float v2, p2, p10

    mul-float v3, p3, p11

    mul-float v4, p4, p10

    .line 253
    mul-float v5, p5, p11

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 252
    invoke-virtual/range {v1 .. v9}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->setTranslationData(FFFFJJ)V

    .line 254
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->updateSpecicalDanmakuDuration(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    goto :goto_0
.end method

.method public notifyDispSizeChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 1
    .param p1, "context"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 81
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sLastConfig:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 82
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sLastDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->createDanmaku(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 84
    return-void
.end method

.method public resetDurationsData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sLastDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_HEIGHT:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_WIDTH:I

    .line 73
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->sSpecialDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->clear()V

    .line 74
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 75
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 76
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Special_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 77
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    .line 78
    return-void
.end method

.method public updateDurationFactor(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 229
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/Duration;->setFactor(F)V

    .line 232
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->updateMaxDanmakuDuration()V

    goto :goto_0
.end method

.method public updateMaxDanmakuDuration()V
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 217
    iget-object v8, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    if-nez v8, :cond_0

    move-wide v2, v6

    .line 218
    .local v2, "maxScrollDuration":J
    :goto_0
    iget-object v8, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    if-nez v8, :cond_1

    move-wide v0, v6

    .line 219
    .local v0, "maxFixDuration":J
    :goto_1
    iget-object v8, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Special_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    if-nez v8, :cond_2

    move-wide v4, v6

    .line 221
    .local v4, "maxSpecialDuration":J
    :goto_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    .line 222
    iget-wide v6, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    .line 224
    const-wide/16 v6, 0xed8

    iget-wide v8, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    .line 225
    iget-wide v6, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    iget-wide v8, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    .line 226
    return-void

    .line 217
    .end local v0    # "maxFixDuration":J
    .end local v2    # "maxScrollDuration":J
    .end local v4    # "maxSpecialDuration":J
    :cond_0
    iget-object v8, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v2, v8, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    goto :goto_0

    .line 218
    .restart local v2    # "maxScrollDuration":J
    :cond_1
    iget-object v8, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v0, v8, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    goto :goto_1

    .line 219
    .restart local v0    # "maxFixDuration":J
    :cond_2
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_Duration_Special_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v4, v6, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    goto :goto_2
.end method

.method public updateViewportState(FFF)Z
    .locals 6
    .param p1, "viewportWidth"    # F
    .param p2, "viewportHeight"    # F
    .param p3, "viewportSizeFactor"    # F

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "sizeChanged":Z
    iget v1, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_WIDTH:I

    float-to-int v2, p1

    if-ne v1, v2, :cond_0

    .line 179
    iget v1, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_HEIGHT:I

    float-to-int v2, p2

    if-ne v1, v2, :cond_0

    .line 180
    iget v1, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_SIZE_FACTOR:F

    cmpl-float v1, v1, p3

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x1

    .line 182
    const v1, 0x456d8000    # 3800.0f

    .line 183
    mul-float v2, p3, p1

    const v3, 0x442a8000    # 682.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-long v2, v1

    .line 182
    iput-wide v2, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    .line 184
    const-wide/16 v2, 0x2328

    .line 185
    iget-wide v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    .line 184
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    .line 186
    const-wide/16 v2, 0xfa0

    iget-wide v4, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    .line 188
    float-to-int v1, p1

    iput v1, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_WIDTH:I

    .line 189
    float-to-int v1, p2

    iput v1, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_HEIGHT:I

    .line 190
    iput p3, p0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->CURRENT_DISP_SIZE_FACTOR:F

    .line 192
    :cond_1
    return v0
.end method
