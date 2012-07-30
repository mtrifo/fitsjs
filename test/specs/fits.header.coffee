require = window.require

FITS = require("fits")

describe "FITS Header", ->

  it 'can parse a FITS header describing an image and ASCII table', ->
    hdr1 = fits.getHeader(0)
    hdr2 = fits.getHeader(1)
    
    expect(hdr1['SIMPLE']).toBeTruthy()
    expect(hdr1['BITPIX']).toEqual(16)
    expect(hdr1['NAXIS']).toEqual(2)
    expect(hdr1['NAXIS1']).toEqual(891)
    expect(hdr1['NAXIS2']).toEqual(893)
    expect(hdr1['EXTEND']).toBeTruthy()
    expect(hdr1['DATE']).toBe('2011-10-27')
    expect(hdr1['ORIGIN']).toBe('STScI/MAST')
    expect(hdr1['SURVEY']).toBe('POSSII-F')
    expect(hdr1['REGION']).toBe('XP174')
    expect(hdr1['PLATEID']).toBe('A0X2')
    expect(hdr1['SCANNUM']).toBe('01')
    expect(hdr1['DSCNDNUM']).toBe('00')
    expect(hdr1['TELESCID']).toEqual(3)
    expect(hdr1['BANDPASS']).toEqual(35)
    expect(hdr1['COPYRGHT']).toBe('Caltech/Palomar')
    expect(hdr1['SITELAT']).toEqual(33.356)
    expect(hdr1['SITELONG']).toEqual(116.863)
    expect(hdr1['TELESCOP']).toBe('Oschin Schmidt - D')
    expect(hdr1['INSTRUME']).toBe('Photographic Plate')
    expect(hdr1['EMULSION']).toBe('IIIaF')
    expect(hdr1['FILTER']).toBe('RG610')
    expect(hdr1['PLTSCALE']).toEqual(67.2)
    expect(hdr1['PLTSIZEX']).toEqual(355.0)
    expect(hdr1['PLTSIZEY']).toEqual(355.0)
    expect(hdr1['PLATERA']).toEqual(206.72736)
    expect(hdr1['PLATEDEC']).toEqual(54.815161)
    expect(hdr1['PLTLABEL']).toBe('SF05135')
    expect(hdr1['DATE-OBS']).toBe('1993-04-25T06:60:00')
    expect(hdr1['EXPOSURE']).toEqual(85.0)
    expect(hdr1['PLTGRADE']).toBe('B')
    expect(hdr1['OBSHA']).toEqual(0.75)
    expect(hdr1['OBSZD']).toEqual(22.8036)
    expect(hdr1['AIRMASS']).toEqual(1.08459)
    expect(hdr1['REFBETA']).toEqual(61.776148)
    expect(hdr1['REFBETAP']).toEqual(-0.082)
    expect(hdr1['REFK1']).toEqual(-2020.9578)
    expect(hdr1['REFK2']).toEqual(-81071.889)
    expect(hdr1['CNPIX1']).toEqual(2608)
    expect(hdr1['CNPIX2']).toEqual(9632)
    expect(hdr1['XPIXELS']).toEqual(23040)
    expect(hdr1['YPIXELS']).toEqual(23040)
    expect(hdr1['XPIXELSZ']).toEqual(15.0295)
    expect(hdr1['YPIXELSZ']).toEqual(15.0)
    expect(hdr1['PPO1']).toEqual(-3069417.0)
    expect(hdr1['PPO2']).toEqual(0.0)
    expect(hdr1['PPO3']).toEqual(177500.0)
    expect(hdr1['PPO4']).toEqual(0.0)
    expect(hdr1['PPO5']).toEqual(3069417.0)
    expect(hdr1['PPO6']).toEqual(177500.0)
    expect(hdr1['PLTRAH']).toEqual(13)
    expect(hdr1['PLTRAM']).toEqual(46)
    expect(hdr1['PLTRAS']).toEqual(54.4)
    expect(hdr1['PLTDECSN']).toBe('+')
    expect(hdr1['PLTDECD']).toEqual(54)
    expect(hdr1['PLTDECM']).toEqual(48)
    expect(hdr1['PLTDECS']).toEqual(55.6)
    expect(hdr1['EQUINOX']).toEqual(2000.0)
    expect(hdr1['AMDX1']).toEqual(67.1289627512)
    expect(hdr1['AMDX2']).toEqual(-0.144391938541)
    expect(hdr1['AMDX3']).toEqual(-292.010821953)
    expect(hdr1['AMDX4']).toEqual(-2.36321927229e-05)
    expect(hdr1['AMDX5']).toEqual(1.5032653996e-05)
    expect(hdr1['AMDX6']).toEqual(-2.7471246116e-06)
    expect(hdr1['AMDX7']).toEqual(0.0)
    expect(hdr1['AMDX8']).toEqual(2.30446279015e-06)
    expect(hdr1['AMDX9']).toEqual(-4.26338207029e-08)
    expect(hdr1['AMDX10']).toEqual(2.39427475192e-06)
    expect(hdr1['AMDX11']).toEqual(-7.94020590268e-08)
    expect(hdr1['AMDX12']).toEqual(0.0)
    expect(hdr1['AMDX13']).toEqual(0.0)
    expect(hdr1['AMDX14']).toEqual(0.0)
    expect(hdr1['AMDX15']).toEqual(0.0)
    expect(hdr1['AMDX16']).toEqual(0.0)
    expect(hdr1['AMDX17']).toEqual(0.0)
    expect(hdr1['AMDX18']).toEqual(0.0)
    expect(hdr1['AMDX19']).toEqual(0.0)
    expect(hdr1['AMDX20']).toEqual(0.0)
    expect(hdr1['AMDY1']).toEqual(67.1325924466)
    expect(hdr1['AMDY2']).toEqual(0.144310904032)
    expect(hdr1['AMDY3']).toEqual(313.822109662)
    expect(hdr1['AMDY4']).toEqual(2.38233596961e-05)
    expect(hdr1['AMDY5']).toEqual(-1.79207383308e-05)
    expect(hdr1['AMDY6']).toEqual(1.97333478155e-05)
    expect(hdr1['AMDY7']).toEqual(0.0)
    expect(hdr1['AMDY8']).toEqual(2.20441222124e-06)
    expect(hdr1['AMDY9']).toEqual(1.14031786424e-09)
    expect(hdr1['AMDY10']).toEqual(2.41348749404e-06)
    expect(hdr1['AMDY11']).toEqual(-1.7842569887e-08)
    expect(hdr1['AMDY12']).toEqual(0.0)
    expect(hdr1['AMDY13']).toEqual(0.0)
    expect(hdr1['AMDY14']).toEqual(0.0)
    expect(hdr1['AMDY15']).toEqual(0.0)
    expect(hdr1['AMDY16']).toEqual(0.0)
    expect(hdr1['AMDY17']).toEqual(0.0)
    expect(hdr1['AMDY18']).toEqual(0.0)
    expect(hdr1['AMDY19']).toEqual(0.0)
    expect(hdr1['AMDY20']).toEqual(0.0)
    expect(hdr1['AMDREX1']).toEqual(67.1265396819)
    expect(hdr1['AMDREX2']).toEqual(-0.145443178281)
    expect(hdr1['AMDREX3']).toEqual(-291.97509882)
    expect(hdr1['AMDREX4']).toEqual(2.80326423325e-06)
    expect(hdr1['AMDREX5']).toEqual(-4.89076221034e-08)
    expect(hdr1['AMDREX6']).toEqual(5.1338363257e-06)
    expect(hdr1['AMDREX7']).toEqual(0.0)
    expect(hdr1['AMDREX8']).toEqual(0.0)
    expect(hdr1['AMDREX9']).toEqual(0.0)
    expect(hdr1['AMDREX10']).toEqual(0.0)
    expect(hdr1['AMDREX11']).toEqual(0.0)
    expect(hdr1['AMDREX12']).toEqual(0.0)
    expect(hdr1['AMDREX13']).toEqual(0.0)
    expect(hdr1['AMDREX14']).toEqual(0.0)
    expect(hdr1['AMDREX15']).toEqual(0.0)
    expect(hdr1['AMDREX16']).toEqual(0.0)
    expect(hdr1['AMDREX17']).toEqual(0.0)
    expect(hdr1['AMDREX18']).toEqual(0.0)
    expect(hdr1['AMDREX19']).toEqual(0.0)
    expect(hdr1['AMDREX20']).toEqual(0.0)
    expect(hdr1['AMDREY1']).toEqual(67.125958024)
    expect(hdr1['AMDREY2']).toEqual(0.144493150279)
    expect(hdr1['AMDREY3']).toEqual(313.640078445)
    expect(hdr1['AMDREY4']).toEqual(-1.76527567573e-06)
    expect(hdr1['AMDREY5']).toEqual(-5.14662446757e-07)
    expect(hdr1['AMDREY6']).toEqual(8.61709943707e-06)
    expect(hdr1['AMDREY7']).toEqual(0.0)
    expect(hdr1['AMDREY8']).toEqual(0.0)
    expect(hdr1['AMDREY9']).toEqual(0.0)
    expect(hdr1['AMDREY10']).toEqual(0.0)
    expect(hdr1['AMDREY11']).toEqual(0.0)
    expect(hdr1['AMDREY12']).toEqual(0.0)
    expect(hdr1['AMDREY13']).toEqual(0.0)
    expect(hdr1['AMDREY14']).toEqual(0.0)
    expect(hdr1['AMDREY15']).toEqual(0.0)
    expect(hdr1['AMDREY16']).toEqual(0.0)
    expect(hdr1['AMDREY17']).toEqual(0.0)
    expect(hdr1['AMDREY18']).toEqual(0.0)
    expect(hdr1['AMDREY19']).toEqual(0.0)
    expect(hdr1['AMDREY20']).toEqual(0.0)
    expect(hdr1['ASTRMASK']).toBe('xp.mask')
    expect(hdr1['WCSAXES']).toEqual(2)
    expect(hdr1['WCSNAME']).toBe('DSS')
    expect(hdr1['RADESYS']).toBe('ICRS')
    expect(hdr1['CTYPE1']).toBe('RA---TAN')
    expect(hdr1['CRPIX1']).toEqual(446.0)
    expect(hdr1['CRVAL1']).toEqual(210.801868)
    expect(hdr1['CUNIT1']).toBe('deg')
    expect(hdr1['CTYPE2']).toBe('DEC--TAN')
    expect(hdr1['CRPIX2']).toEqual(447.0)
    expect(hdr1['CRVAL2']).toEqual(54.348171)
    expect(hdr1['CUNIT2']).toBe('deg')
    expect(hdr1['CD1_1']).toEqual(-0.0002798094)
    expect(hdr1['CD1_2']).toEqual(1.56364e-05)
    expect(hdr1['CD2_1']).toEqual(1.55823e-05)
    expect(hdr1['CD2_2']).toEqual(0.0002791902)
    expect(hdr1['OBJECT']).toBe('data')
    expect(hdr1['DATAMIN']).toEqual(2396)
    expect(hdr1['DATAMAX']).toEqual(26203)
    expect(hdr1['OBJCTRA']).toBe('14 03 12.510')
    expect(hdr1['OBJCTDEC']).toBe('+54 20 53.10')
    expect(hdr1['OBJCTX']).toEqual(3053.14)
    expect(hdr1['OBJCTY']).toEqual(10078.26)
    
    # Testing the second header
    expect(hdr2['XTENSION']).toBe('TABLE')
    expect(hdr2['BITPIX']).toEqual(8)
    expect(hdr2['NAXIS']).toEqual(2)
    expect(hdr2['NAXIS1']).toEqual(24)
    expect(hdr2['NAXIS2']).toEqual(1600)
    expect(hdr2['PCOUNT']).toEqual(0)
    expect(hdr2['GCOUNT']).toEqual(1)
    expect(hdr2['TFIELDS']).toEqual(4)
    expect(hdr2['EXTNAME']).toBe('xp.mask')
    expect(hdr2['TTYPE1']).toBe('XI')
    expect(hdr2['TBCOL1']).toEqual(1)
    expect(hdr2['TFORM1']).toBe('F6.2')
    expect(hdr2['TUNIT1']).toBe('DEGREES')
    expect(hdr2['TTYPE2']).toBe('ETA')
    expect(hdr2['TBCOL2']).toEqual(7)
    expect(hdr2['TFORM2']).toBe('F6.2')
    expect(hdr2['TUNIT2']).toBe('DEGREES')
    expect(hdr2['TTYPE3']).toBe('XI_CORR')
    expect(hdr2['TBCOL3']).toEqual(13)
    expect(hdr2['TFORM3']).toBe('F6.2')
    expect(hdr2['TUNIT3']).toBe('ARCSEC')
    expect(hdr2['TTYPE4']).toBe('ETA_CORR')
    expect(hdr2['TBCOL4']).toEqual(19)
    expect(hdr2['TFORM4']).toBe('F6.2')
    expect(hdr2['TUNIT4']).toBe('ARCSEC')
    
  it 'can parse a FITS header describing an compressed image', ->
    hdr1 = compimg.getHeader(0)
    hdr2 = compimg.getHeader(1)
    
    expect(hdr1['SIMPLE']).toBeTruthy()
    expect(hdr1['BITPIX']).toEqual(16)
    expect(hdr1['NAXIS']).toEqual(0)
    expect(hdr1['EXTEND']).toBeTruthy()
    expect(hdr1['CHECKSUM']).toBe('1dF51Z941dC41Z94')
    expect(hdr1['DATASUM']).toBe('0')
    
    expect(hdr2['XTENSION']).toBe('BINTABLE')
    expect(hdr2['BITPIX']).toEqual(8)
    expect(hdr2['NAXIS']).toEqual(2)
    expect(hdr2['NAXIS1']).toEqual(24)
    expect(hdr2['NAXIS2']).toEqual(401)
    expect(hdr2['PCOUNT']).toEqual(98591)
    expect(hdr2['GCOUNT']).toEqual(1)
    expect(hdr2['TFIELDS']).toEqual(3)
    expect(hdr2['TTYPE1']).toBe('COMPRESSED_DATA')
    expect(hdr2['TFORM1']).toBe('1PB(281)')
    expect(hdr2['TTYPE2']).toBe('ZSCALE')
    expect(hdr2['TFORM2']).toBe('1D')
    expect(hdr2['TTYPE3']).toBe('ZZERO')
    expect(hdr2['TFORM3']).toBe('1D')
    expect(hdr2['ZIMAGE']).toBeTruthy()
    expect(hdr2['ZTILE1']).toEqual(401)
    expect(hdr2['ZTILE2']).toEqual(1)
    expect(hdr2['ZCMPTYPE']).toBe('RICE_1')
    expect(hdr2['ZNAME1']).toBe('BLOCKSIZE')
    expect(hdr2['ZVAL1']).toEqual(32)
    expect(hdr2['ZNAME2']).toBe('BYTEPIX')
    expect(hdr2['ZVAL2']).toEqual(4)
    expect(hdr2['EXTNAME']).toBe('COMPRESSED_IMAGE')
    expect(hdr2['ZSIMPLE']).toBeTruthy()
    expect(hdr2['ZBITPIX']).toEqual(-32)
    expect(hdr2['ZNAXIS']).toEqual(2)
    expect(hdr2['ZNAXIS1']).toEqual(401)
    expect(hdr2['ZNAXIS2']).toEqual(401)
    expect(hdr2['ZEXTEND']).toBeTruthy()
    expect(hdr2['EQUINOX']).toEqual(2000.0)
    expect(hdr2['RADECSYS']).toBe('ICRS')
    expect(hdr2['CTYPE1']).toBe('RA---TAN')
    expect(hdr2['CUNIT1']).toBe('deg')
    expect(hdr2['CRVAL1']).toEqual(31.62858333)
    expect(hdr2['CRPIX1']).toEqual(-7482.5)
    expect(hdr2['CD1_1']).toEqual(-5.166666789e-05)
    expect(hdr2['CD1_2']).toEqual(0.0)
    expect(hdr2['CTYPE2']).toBe('DEC--TAN')
    expect(hdr2['CUNIT2']).toBe('deg')
    expect(hdr2['CRVAL2']).toEqual(-10.73333333)
    expect(hdr2['CRPIX2']).toEqual(-6213.5)
    expect(hdr2['CD2_1']).toEqual(0.0)
    expect(hdr2['CD2_2']).toEqual(5.166666789e-05)
    expect(hdr2['EXPTIME']).toEqual(3500.353)
    expect(hdr2['GAIN']).toEqual(68.81093874)
    expect(hdr2['SATURATE']).toEqual(3234.110669)
    expect(hdr2['SOFTNAME']).toBe('SWarp')
    expect(hdr2['SOFTVERS']).toBe('2.17.6')
    expect(hdr2['SOFTDATE']).toBe('2009-04-09')
    expect(hdr2['SOFTAUTH']).toBe('Emmanuel BERTIN <bertin@iap.fr>')
    expect(hdr2['SOFTINST']).toBe('IAP  http://www.iap.fr')
    expect(hdr2['AUTHOR']).toBe('unknown')
    expect(hdr2['ORIGIN']).toBe('CFHT')
    expect(hdr2['DATE']).toBe('2009-07-30T14:53:50')
    expect(hdr2['COMBINET']).toBe('MEDIAN')
    expect(hdr2['FILTER']).toBe('g.MP9401')
    expect(hdr2['INSTRUME']).toBe('MegaPrime')
    expect(hdr2['TELESCOP']).toBe('CFHT 3.6m')
    expect(hdr2['DETECTOR']).toBe('MegaCam')
    expect(hdr2['OBSERVER']).toBe('QSO Team')
    expect(hdr2['PHOT_C']).toEqual(26.537)
    expect(hdr2['PHOT_K']).toEqual(-0.15)
    expect(hdr2['OBJECT']).toBe('w1.-3-4')
    expect(hdr2['REL_DATE']).toBe('2008-10-19T00:00:00')
    expect(hdr2['RESAMPT1']).toBe('LANCZOS3')
    expect(hdr2['CENTERT1']).toBe('MANUAL')
    expect(hdr2['PSCALET1']).toBe('MANUAL')
    expect(hdr2['RESAMPT2']).toBe('LANCZOS3')
    expect(hdr2['CENTERT2']).toBe('MANUAL')
    expect(hdr2['PSCALET2']).toBe('MANUAL')
    expect(hdr2['ZQUANTIZ']).toBe('SUBTRACTIVE_DITHER_1')
    expect(hdr2['ZDITHER0']).toEqual(7581)
    expect(hdr2['CHECKSUM']).toBe('VAQOW6QOVAQOV3QO')
    expect(hdr2['DATASUM']).toBe('3223591956')

  it 'can parse a FITS header describing a binary table', ->
    hdr1 = bintable.getHeader(0)
    hdr2 = bintable.getHeader(1)
              
    expect(hdr1['SIMPLE']).toBeTruthy()
    expect(hdr1['BITPIX']).toEqual(8)
    expect(hdr1['NAXIS']).toEqual(0)
    expect(hdr1['EXTEND']).toBeTruthy()
    
    expect(hdr2['XTENSION']).toBe('BINTABLE')
    expect(hdr2['BITPIX']).toEqual(8)
    expect(hdr2['NAXIS']).toEqual(2)
    expect(hdr2['NAXIS1']).toEqual(40)
    expect(hdr2['NAXIS2']).toEqual(3854)
    expect(hdr2['PCOUNT']).toEqual(0)
    expect(hdr2['GCOUNT']).toEqual(1)
    expect(hdr2['TFIELDS']).toEqual(6)
    expect(hdr2['TTYPE1']).toBe('flux')
    expect(hdr2['TFORM1']).toBe('D')
    expect(hdr2['TTYPE2']).toBe('best_fit')
    expect(hdr2['TFORM2']).toBe('D')
    expect(hdr2['TTYPE3']).toBe('wavelength')
    expect(hdr2['TFORM3']).toBe('D')
    expect(hdr2['TTYPE4']).toBe('and_mask')
    expect(hdr2['TFORM4']).toBe('J')
    expect(hdr2['TTYPE5']).toBe('or_mask')
    expect(hdr2['TFORM5']).toBe('J')
    expect(hdr2['TTYPE6']).toBe('inverse_variance')
    expect(hdr2['TFORM6']).toBe('D')
    expect(hdr2['TAI']).toBe('4481503965.49')
    expect(hdr2['RA']).toBe('35.883123')
    expect(hdr2['DEC']).toBe('0.122066')
    expect(hdr2['EQUINOX']).toBe('2000.0')
    expect(hdr2['RADECSYS']).toBe('FK5')
    expect(hdr2['AZ']).toBe('280.031654167')
    expect(hdr2['ALT']).toBe('54.1588238333')
    expect(hdr2['AIRMASS']).toBe('1.20323')
    expect(hdr2['FOCUS']).toBe('-1000000000000')
    expect(hdr2['DATE-OBS']).toBe('2000-11-21')
    expect(hdr2['TAIHMS']).toBe('05:11:42.21')
    expect(hdr2['TIMESYS']).toBe('tai')
    expect(hdr2['TAI-BEG']).toBe('4481499044.0')
    expect(hdr2['TAI-END']).toBe('4481508024.0')
    expect(hdr2['MJD']).toBe('51869')
    expect(hdr2['MJDLIST']).toBe('51869')
    